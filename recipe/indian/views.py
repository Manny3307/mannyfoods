from django.shortcuts import render, redirect
from indian.models import TblRecipe
from indian.forms import RecipeForm
from django.http import HttpResponse
import sys, os
sys.path.append('/home/manny/mannyfoods')
from food_helpers.food_db_helpers import dbFunctions
from food_helpers.general_helpers import generalFunction
import datetime
import hashlib
from django.contrib.auth.decorators import login_required
from django.db import connection, transaction
from .forms import CalzoneOrderForm
from django.contrib import messages
from .models import TblMenu
from django.http import FileResponse
from django.conf import settings
from pathlib import Path

def serve_apple_pay_verification(request):
    BASEDIR = Path(__file__).resolve().parent.parent
    file_path = os.path.join(BASEDIR, 'templates/.well-known', 'apple-developer-merchantid-domain-association')
    print(file_path)
    return FileResponse(open(file_path, 'rb'))


def calzone_order(request):
    if request.method == 'POST':
        form = CalzoneOrderForm(request.POST)
        if form.is_valid():
            order_date = form.cleaned_data['order_date']
            quantity = form.cleaned_data['quantity']
            
            with transaction.atomic():
                cursor = connection.cursor()
                
                # Insert into tbl_user_order
                cursor.execute("""
                    INSERT INTO tbl_user_order (user_id, order_date, order_total)
                    VALUES (%s, %s, %s)
                    RETURNING order_id
                """, [request.user.id, order_date, quantity * 10.99])  # Assuming calzone price is $10.99
                order_id = cursor.fetchone()[0]
                
                # Insert into tbl_user_order_items
                cursor.execute("""
                    INSERT INTO tbl_user_order_items (order_id, order_item_id, order_item_quantity, order_item_price)
                    VALUES (%s, %s, %s, %s)
                """, [order_id, 1, quantity, 10.99])  # Assuming calzone menu_dish_id is 1
            
            messages.success(request, 'Order placed successfully!')
            return redirect('calzone_order')
    else:
        form = CalzoneOrderForm()
    
    return render(request, 'calzone_order.html', {'form': form})
# Create your views here.

def week_dates():
    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday
    dates = [start_of_week + datetime.timedelta(days=i) for i in range(7)]  # 7 days from Monday to Sunday
    return dates

def login(request):
    obj_db = dbFunctions()
    if request.method == "POST":
        user_name = request.POST["email"]
        user_pass = request.POST["password"]
        user_details = obj_db.validate_login(user_name, user_pass)
        if not user_details:
            return render(request, 'index.html')
        else:
            request.session['user_id'] = user_details[0][0]
            request.session['user_name'] = user_details[0][1]
            client_list = obj_db.get_client_list()
            return render(request, 'dashboard.html',{'client_list':client_list})                    
    return render(request, 'login.html')

def dashboard(request):
    obj_db = dbFunctions()
    dates = week_dates()
    formatted_dates = [{'day': date.strftime('%A'), 'full_date': date.strftime('%d %B, %Y')} for date in dates]
    if request.session.get('user_id') == "":
        return render(request, 'index.html')

    client_list = obj_db.get_client_list()
    return render(request, 'dashboard.html',{'client_list':client_list, 'dates':formatted_dates})

def home(request):
    obj_db = dbFunctions()
    menu_items = obj_db.get_menu_items()
    customer_reviews = obj_db.get_customer_reviews()
    menu_headers = obj_db.get_menu_headers()
    return render(request, 'index.html', {'menu_items':menu_items, 'customer_reviews':customer_reviews, 'menu_headers':menu_headers})

def developers(request):
    return render(request, 'developers.html')

def menu(request):
    obj_db = dbFunctions()
    breakfast_menu = obj_db.get_menu(8) #To get the menu for Breakfast 
    lunch_menu = obj_db.get_menu(9) #To get the menu for Lunch

    return render(request, 'food_truck_menu.html', {'breakfast_menu': breakfast_menu, 'lunch_menu': lunch_menu})


def order(request):
    accomodation = request.GET.get('acc')
    if(accomodation == "" or accomodation == None):
        accomodation = "Golden Palms Groevdale"
    
    obj_db = dbFunctions()
    breakfast_menu = obj_db.get_menu(8)
    
    '''context = {
            'order_items': order_items,
            'total': total,
            'accomodation': accomodation,
            'room_no': room_no,
            'phone_no': phone_no,
            'guest_name': guest_name
        }'''
    if request.method == "POST":
        return render(request, 'brekky_order.html',{'breakfast_menu': breakfast_menu})

    return render(request, 'brekky_order.html',{'breakfast_menu': breakfast_menu, 'accomodation': accomodation})

def inner(request):
    return render(request, 'inner-page.html')

def calculate(request):
    obj_db = dbFunctions()
    obj_gen = generalFunction()
    recipies = obj_db.get_recipies()
    if request.method == "POST":  
        recipe_id = request.POST["recipe_name"]
        recipe_quantity = request.POST["recipe_quantity"]
        get_ingredients_for_recipe = obj_db.get_recipe_ingredients(recipe_id)
        calculated_ingredients_recipe = obj_gen.calculate_ingredients(get_ingredients_for_recipe, int(recipe_quantity))
        return render(request, 'calculate_recipe_ingredients.html',{'recipies':recipies, 'ingredients':calculated_ingredients_recipe,\
                                                                     'recipe_quantity': recipe_quantity} )

    return render(request, 'calculate_recipe_ingredients.html',{'recipies':recipies})

def review_order(request):
    if request.method == 'POST':
        selected_items = request.POST.getlist('selected_items')
        accomodation = request.POST.get('hdn_accomodation')
        room_no = request.POST.get('txt_room_no')
        phone_no = request.POST.get('txt_phone_no')
        guest_name = request.POST.get('txt_guest_name')
        order_items = []
        total = 0
        for item_id in selected_items:
            menu_item = TblMenu.objects.get(menu_dish_id=item_id)
            quantity = int(request.POST.get(f'hdn_quantity_{item_id}', 0))
            price = float(request.POST.get(f'price_{item_id}', 0))
            subtotal = price * quantity
            
            order_items.append({
                'name': menu_item.menu_dish_name,
                'quantity': quantity,
                'price': price,
                'subtotal': subtotal
            })
            
            total += subtotal
        
        context = {
            'order_items': order_items,
            'total': total,
            'accomodation': accomodation,
            'room_no': room_no,
            'phone_no': phone_no,
            'guest_name': guest_name
        }
        
        return render(request, 'order/review_order.html', context) 
    
    return render(request,"order/review_order.html")

def recipe(request):  
    request.session["name"] = "Manny"
    username = request.session["name"]
    created_date = datetime.datetime.now()
    obj_db = dbFunctions()
    cuisines = obj_db.get_cuisines()
    metrics = obj_db.get_quantity_metrics()
    if request.method == "POST":  
        form = RecipeForm(request.POST)  #id_recipe_created_date
        if form.is_valid():  
            try:  
                form.save()  
                return redirect('/show')   
            except Exception as error:  
                print(error)
                pass  
    else:  
        form = RecipeForm()  
    return render(request,'display_recipe.html',{'form':form, 'username': username, 'created_date': created_date, 'cuisines':cuisines, 'metrics': metrics})  

def show(request):  
    Recipe = TblRecipe.objects.all()  
    return render(request,"show_recipe.html",{'recipe':Recipe})  

def edit(request, id):  
    Recipe = TblRecipe.objects.get(id=id)  
    return render(request,'edit_recipe.html', {'recipe':Recipe})  

def update(request, id):  
    Recipe = TblRecipe.objects.get(id=id)  
    form = RecipeForm(request.POST, instance = Recipe)  
    if form.is_valid():  
        form.save()  
        return redirect("/show")  
    return render(request, 'edit_recipe.html', {'recipe': Recipe})

def destroy(request, id):  
    recipe = TblRecipe.objects.get(id=id)  
    recipe.delete()  
    return redirect("/show")  
