from django import forms  
from indian.models import TblRecipe

class RecipeForm(forms.ModelForm):  
    class Meta:  
        model = TblRecipe  
        fields = "__all__"  