import sys, os
from dotenv import load_dotenv
sys.path.append('/home/manny/mannyfoods')

class generalFunction():
    def __init__(self):
        pass
    
    #Convert the Value of ml to litre and grams to Kg if the value exceeds 1000
    def convert_val(self, value_to_convert, value_metrics):
        converted_value = ""
        if(value_to_convert >= 1000):
            if(value_metrics == 'ml'):
                converted_value = value_to_convert / 1000
                converted_value = f"{converted_value} litre(s)"
            
            if(value_metrics == 'grams'):
                converted_value = value_to_convert / 1000
                converted_value = f"{converted_value} kg(s)"
        else:
            converted_value = f"{value_to_convert} {value_metrics}"

        return converted_value


    #A function to Calculate the total Ingredients for the Quantity of the recipe to be prepared
    def calculate_ingredients(self, ingredients_for_recipe, Quantity):
        calculated_ingredients = []
        counter = 1
        str_ingre = ""
        converted_value = ""
        calculated_value = 1
        for i in ingredients_for_recipe:
            calculated_value = int(i[1]) * int(Quantity)
            converted_value = self.convert_val(calculated_value, i[2])
            str_ingre = f"{counter},{i[0]},{i[1]},{i[2]},{converted_value}"
            calculated_ingredients.append(str_ingre)
            counter += 1

        return calculated_ingredients
        
        