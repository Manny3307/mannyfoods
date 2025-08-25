from sqlalchemy import create_engine
import sqlalchemy as db
import datetime
import sys, os
from django.utils import timezone
from dotenv import load_dotenv
sys.path.append('/home/manny/mannyfoods')
from food_helpers.general_helpers import generalFunction

class dbFunctions(generalFunction):
    def __init__(self):
        global DBConnecter, UserName, Password, ServerOrEndPoint, DatabaseName, connection_string, engine
        load_dotenv() 
        DBConnector = os.getenv("DBConnecter")
        UserName = os.getenv("DB_USER")
        Password = os.getenv("DB_PASSWORD")
        ServerOrEndPoint = f'{os.getenv("DB_HOST")}:{os.getenv("DB_PORT")}'
        DatabaseName = os.getenv("DB_NAME")
        engine = create_engine(f'{DBConnector}://{UserName}:{Password}@{ServerOrEndPoint}/{DatabaseName}')
        

    #Get the Cuisine values from the Database.
    def get_cuisines(self):
        get_cuisine_query = "SELECT cuisine_id, cuisine_name  FROM tbl_cuisine"
        with engine.connect() as conn:
            cuisines = conn.execute(db.text(get_cuisine_query)).fetchall()
        conn.close()
        return cuisines

    #Get the Metrics values from the Database.
    def get_quantity_metrics(self):
        get_metrics_query = "SELECT metric_id, metric_name  FROM tbl_quantity_metrics"
        with engine.connect() as conn:
            metrics = conn.execute(db.text(get_metrics_query)).fetchall()
        conn.close()
        return metrics

    #Get the Recipe values from the Database.
    def get_recipies(self):
        get_cuisine_query = "SELECT recipe_id, recipe_name  FROM tbl_recipe"
        with engine.connect() as conn:
            recipies = conn.execute(db.text(get_cuisine_query)).fetchall()
        conn.close()
        return recipies
    
    #Fetch the Recipe Ingredients from the database against the respective recipe.
    def get_recipe_ingredients(self, recipe_id):
        get_recipe_ingredients = f"SELECT i.ingre_name,i.ingre_quantity, met.metric_name FROM tbl_recipe_ingredients i INNER JOIN tbl_quantity_metrics met \
                                  ON met.metric_id = i.metric_id WHERE i.recipe_id = {recipe_id}"
        with engine.connect() as conn:
            ingredients = conn.execute(db.text(get_recipe_ingredients)).fetchall()
        conn.close()
        return ingredients
    
    #Validate the user name and password against user table in 
    def validate_login(self, user_email, user_password):
        user_hashed_password = self.get_hashed_val(user_password)
        validate_user = f"SELECT user_id, user_name from tbl_user WHERE user_name = '{user_email}' AND user_password = '{user_hashed_password}'"
        with engine.connect() as conn:
            user_details = conn.execute(db.text(validate_user)).fetchall()
        conn.close()
        return user_details
    
    #Get all the Menu items for Manny Foods
    def get_menu_items(self):
        menu_items_query = "SELECT * FROM get_menu_items_func()"
        with engine.connect() as conn:
            menu_items = conn.execute(db.text(menu_items_query)).fetchall()
        conn.close()
        return menu_items
    
    #Get all the Menu items for Manny Foods
    def get_customer_reviews(self):
        customer_review_query = "SELECT * FROM get_customer_reviews()"
        with engine.connect() as conn:
            customer_reviews = conn.execute(db.text(customer_review_query)).fetchall()
        conn.close()
        return customer_reviews
    
    #Get the list of clients
    def get_client_list(self):
        client_list_query = "SELECT user_business_name, user_first_name, user_last_name FROM tbl_user WHERE user_customer_type = 'client'"
        with engine.connect() as conn:
            client_list = conn.execute(db.text(client_list_query)).fetchall()
        conn.close()
        return client_list
    
    #Get the Breakfast menu food
    def get_menu(self, brekky_lunch):
        breakfast_menu_query = f"SELECT * FROM public.get_menu_items_func() WHERE is_active = 'Y' AND dish_class_name = '{brekky_lunch}' ORDER BY menu_dish_seq"
        with engine.connect() as conn:
            breakfast_list = conn.execute(db.text(breakfast_menu_query)).fetchall()
        conn.close()
        return breakfast_list
    
    #Get the Breakfast menu food
    def get_sub_menu(self):
        sub_menu_query = f"SELECT * FROM public.get_sub_menu_items_func() WHERE activeyn = 'Y'"
        with engine.connect() as conn:
            sub_menu_list = conn.execute(db.text(sub_menu_query)).fetchall()
        conn.close()
        return sub_menu_list
    
    #Get the configuration values.
    def get_conf_value(self, conf_desc):
        conf_description_query = f"SELECT conf_description, conf_value FROM public.indian_configuration WHERE conf_description = '{conf_desc}'"
        with engine.connect() as conn:
            conf_description_value = conn.execute(db.text(conf_description_query)).fetchall()
        conn.close()
        return conf_description_value

    #Get the Breakfast menu food
    def get_menu_headers(self):
        menu_header_query = "SELECT * FROM public.tbl_dish_classification WHERE is_Active = 'Y'"
        with engine.connect() as conn:
            breakfast_list = conn.execute(db.text(menu_header_query)).fetchall()
        conn.close()
        return breakfast_list
    
    #Set Discount Value
    def set_discount_value(self, discount_value):
        discount_value_query = f"UPDATE tbl_conf SET conf_value = {discount_value} WHERE tbl_conf.conf_description = 'Discount'"
        
        with engine.connect() as conn:
            conn.execute(db.text(discount_value_query))
            conn.commit()
        conn.close()
    
    #Insert the website hit to database table
    def add_visitor_count(self, visitor_data):
        IP_Addr = visitor_data["ip_addr"]
        device_type = visitor_data["device_type"]
        browser = visitor_data["browser"]
        osname = visitor_data["osname"]
        country = visitor_data["country"]
        city = visitor_data["city"]
        isp = visitor_data["isp"]
        visitor_datetime = visitor_data["date"]
        visitor_datetime = timezone.localtime(visitor_datetime)
        with engine.connect() as conn:
            insert_hit_query = f"INSERT INTO tbl_website_hit (ip_addr, device_type, browser, osname, country, city, isp, visitor_date) VALUES('{IP_Addr}','{device_type}','{browser}','{osname}','{country}','{city}','{isp}','{visitor_datetime}')"
            conn.execute(db.text(insert_hit_query))
            #conn.commit()
        conn.close()

    #Set Counter Value
    def set_counter_value(self):
        counter_value = 0
        get_counter_value_query = f"SELECT conf_value FROM indian_configuration WHERE conf_description = 'Counter'"
        
        
        with engine.connect() as conn:
            get_counter_value = conn.execute(db.text(get_counter_value_query)).fetchall()
            counter_value = int(get_counter_value[0][-1])
            counter_value = counter_value + 1

            discount_value_query = f"UPDATE indian_configuration SET conf_value = {counter_value} WHERE conf_description = 'Counter'"
            conn.execute(db.text(discount_value_query))
            conn.commit()
        conn.close()

    #Get the Stripe conf values from the database
    def get_conf_values(self):
        app_conf_query = "SELECT * FROM tbl_app_conf WHERE app_conf_name IN ('Publishable_Key','Secret_Key','Domain_Name')"
        with engine.connect() as conn:
            app_conf_list = conn.execute(db.text(app_conf_query)).fetchall()
        conn.close()
        return app_conf_list 