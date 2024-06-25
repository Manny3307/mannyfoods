from sqlalchemy import create_engine
import sqlalchemy as db
import datetime
import sys, os
from dotenv import load_dotenv
sys.path.append('/home/manny/mannyfoods')

class dbFunctions():
    def __init__(self):
        global DBConnecter, UserName, Password, ServerOrEndPoint, DatabaseName, connection_string, engine
        load_dotenv() 
        DBConnector = os.getenv("DBConnecter")
        UserName = os.getenv("DB_USER")
        Password = os.getenv("DB_PASSWORD")
        ServerOrEndPoint = f'{os.getenv("DB_HOST")}:{os.getenv("DB_PORT")}'
        DatabaseName = os.getenv("DB_NAME")
        engine = create_engine(f'{DBConnector}://{UserName}:{Password}@{ServerOrEndPoint}/{DatabaseName}')

    def get_cuisines(self):
        get_cuisine_query = "SELECT cuisine_id, cuisine_name  FROM tbl_cuisine"
        with engine.connect() as conn:
            cuisines = conn.execute(db.text(get_cuisine_query)).fetchall()
        
        return cuisines

    def get_quantity_metrics(self):
        get_metrics_query = "SELECT metric_id, metric_name  FROM tbl_quantity_metrics"
        with engine.connect() as conn:
            metrics = conn.execute(db.text(get_metrics_query)).fetchall()
        
        return metrics

    def get_recipies(self):
        get_cuisine_query = "SELECT recipe_id, recipe_name  FROM tbl_recipe"
        with engine.connect() as conn:
            recipies = conn.execute(db.text(get_cuisine_query)).fetchall()
        
        return recipies
    
    def get_recipe_ingredients(self, recipe_id):
        get_recipe_ingredients = f"SELECT i.ingre_name,i.ingre_quantity, met.metric_name FROM tbl_recipe_ingredients i INNER JOIN tbl_quantity_metrics met \
                                  ON met.metric_id = i.metric_id WHERE i.recipe_id = {recipe_id}"
        with engine.connect() as conn:
            ingredients = conn.execute(db.text(get_recipe_ingredients)).fetchall()
        
        return ingredients