from django.urls import path
from . import views 
from django.conf import settings
from django.conf.urls.static import static

app_name = 'indian' 

urlpatterns = [
    path('', views.home, name='home'),
    path('home', views.home, name='home'),
    path('login', views.login),  
    path('inner', views.inner),  
    path('calculate', views.calculate),  
    path('recipe', views.recipe),  
    path('show',views.show),  
    path('edit/<int:id>', views.edit),  
    path('update/<int:id>', views.update),  
    path('delete/<int:id>', views.destroy),  
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
