from django import forms  
from indian.models import TblRecipe

class RecipeForm(forms.ModelForm):  
    class Meta:  
        model = TblRecipe  
        fields = "__all__"  

class CalzoneOrderForm(forms.Form):
    order_date = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    quantity = forms.IntegerField(min_value=1)