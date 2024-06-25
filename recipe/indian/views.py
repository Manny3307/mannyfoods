from django.shortcuts import render, redirect
from indian.models import TblRecipe
from indian.forms import RecipeForm
from django.http import HttpResponse
import sys, os
sys.path.append('/home/manny/mannyfoods')
from food_helpers.food_db_helpers import dbFunctions

# Create your views here.

def login(request):
    return render(request, 'login.html')

def home(request):
    return render(request, 'index.html')

def inner(request):
    return render(request, 'inner-page.html')

def calculate(request):
    obj_db = dbFunctions()
    recipies = obj_db.get_recipies()

    return render(request, 'calculate_recipe_ingredients.html',{'recipies':recipies})


def recipe(request):  
    request.session["name"] = "Manny"
    username = request.session["name"]
    created_date = '2024-06-17 22:45:26.640476'
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