# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class DjangoSite(models.Model):
    domain = models.CharField(unique=True, max_length=100)
    name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'django_site'


class TblCuisine(models.Model):
    cuisine_id = models.AutoField(primary_key=True)
    cuisine_name = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'tbl_cuisine'


class TblCustomerReview(models.Model):
    review_id = models.AutoField(primary_key=True)
    user = models.ForeignKey('TblUser', models.DO_NOTHING)
    review_text = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'tbl_customer_review'


class TblDishClassification(models.Model):
    dish_class_id = models.AutoField(primary_key=True)
    dish_class_name = models.CharField(max_length=100)
    dish_css_class = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_dish_classification'


class TblMenu(models.Model):
    menu_dish_id = models.AutoField(primary_key=True)
    menu_dish_name = models.CharField(max_length=100)
    menu_dish_cost = models.IntegerField()
    menu_cuisine = models.ForeignKey(TblCuisine, models.DO_NOTHING)
    menu_dish_class = models.ForeignKey(TblDishClassification, models.DO_NOTHING)
    menu_dish_description = models.CharField(max_length=500, blank=True, null=True)
    menu_dish_pic_path = models.CharField(max_length=500, blank=True, null=True)
    prog_name = models.CharField(max_length=150, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_menu'


class TblQuantityMetrics(models.Model):
    metric_id = models.AutoField(primary_key=True)
    metric_name = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'tbl_quantity_metrics'


class TblRecipe(models.Model):
    recipe_id = models.AutoField(primary_key=True)
    recipe_name = models.CharField(max_length=200)
    cuisine = models.ForeignKey(TblCuisine, models.DO_NOTHING)
    recipe_created_by = models.CharField(max_length=50)
    recipe_updated_by = models.CharField(max_length=50)
    recipe_created_date = models.DateTimeField(blank=True, null=True)
    recipe_updated_date = models.DateTimeField(blank=True, null=True)
    recipe_description = models.CharField(max_length=2000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_recipe'


class TblRecipeIngredients(models.Model):
    ingre_id = models.AutoField(primary_key=True)
    recipe = models.ForeignKey(TblRecipe, models.DO_NOTHING)
    ingre_name = models.CharField(max_length=200)
    ingre_quantity = models.IntegerField()
    metric = models.ForeignKey(TblQuantityMetrics, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_recipe_ingredients'


class TblUser(models.Model):
    user_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=200)
    user_password = models.CharField(max_length=500)
    user_first_name = models.CharField(max_length=200)
    user_last_name = models.CharField(max_length=200)
    user_gender = models.CharField(max_length=10, blank=True, null=True)
    user_customer_type = models.CharField(max_length=50, blank=True, null=True)
    user_business_name = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_user'


class TblUserContactInfo(models.Model):
    user_contact_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(TblUser, models.DO_NOTHING)
    user_contact_type = models.ForeignKey('TblUserContactType', models.DO_NOTHING)
    user_contact_value = models.CharField(max_length=500)
    user_contact_default = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_user_contact_info'


class TblUserContactType(models.Model):
    user_contact_type_id = models.AutoField(primary_key=True)
    user_contact_type_value = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'tbl_user_contact_type'


class TblUserOrder(models.Model):
    order_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(TblUser, models.DO_NOTHING)
    order_date = models.DateTimeField()
    order_total = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_user_order'


class TblUserOrderItems(models.Model):
    order_items_id = models.AutoField(primary_key=True)
    order = models.ForeignKey(TblUserOrder, models.DO_NOTHING)
    order_item = models.ForeignKey(TblMenu, models.DO_NOTHING)
    order_item_quantity = models.IntegerField()
    order_item_price = models.FloatField()

    class Meta:
        managed = False
        db_table = 'tbl_user_order_items'

class BreakfastMenuItem(models.Model):
    menu_dish_id = models.AutoField(primary_key=True)
    menu_dish_name = models.CharField(max_length=100)
    menu_dish_description = models.TextField()
    menu_dish_cost = models.DecimalField(max_digits=6, decimal_places=2)
    is_available = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = 'Breakfast Menu Item'
        verbose_name_plural = 'Breakfast Menu Items'

    def __str__(self):
        return self.menu_dish_name
    

class Configuration(models.Model):
    conf_id = models.AutoField(primary_key=True)
    conf_description = models.CharField(max_length=255)
    conf_value = models.TextField()

    def __str__(self):
        return self.conf_description