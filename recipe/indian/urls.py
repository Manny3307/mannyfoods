from django.urls import path
from . import views 
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.views import serve

app_name = 'indian' 

urlpatterns = [
    path('', views.home, name='home'),
    path('home', views.home, name='home'),
    path('login', views.login),  
    path('inner', views.inner),
    path('developers', views.developers),  
    path('order', views.order),
    path('menu', views.menu),  
    path('calculate', views.calculate),  
    path('recipe', views.recipe),  
    path('dashboard', views.dashboard),  
    path('catering', views.catering),  
    path('configuration', views.configuration),  
    path('order-calzone', views.calzone_order),
    path('review_order', views.review_order),
    path('show',views.show),  
    path('edit/<int:id>', views.edit),  
    path('update/<int:id>', views.update),  
    path('delete/<int:id>', views.destroy),
    path('.well-known/apple-developer-merchantid-domain-association',views.serve_apple_pay_verification),
    path('configs/', views.config_list, name='config_list'),
    path('configs/create/', views.config_create, name='config_create'),
    path('configs/<int:pk>/edit/', views.config_update, name='config_update'),
    path('configs/<int:pk>/delete/', views.config_delete, name='config_delete'),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
