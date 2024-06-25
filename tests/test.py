import os, sys
sys.path.append('/home/manny/mannyfoods')
from food_helpers.food_db_helpers import dbFunctions

obj_db = dbFunctions()
obj_db.get_batch_id_from_database()