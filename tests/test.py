import os, sys
sys.path.append('/home/manny/mannyfoods')
from food_helpers.food_db_helpers import dbFunctions
from food_helpers.general_helpers import generalFunction

obj_db = dbFunctions()
#obj_db.get_batch_id_from_database()

get_ingredients = obj_db.get_recipe_ingredients(1)

obj_gen = generalFunction()
test = obj_gen.calculate_ingredients(get_ingredients) 
print(test)