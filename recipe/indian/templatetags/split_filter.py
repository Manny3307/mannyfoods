from django import template
from django.template.defaultfilters import stringfilter

register = template.Library()

@register.filter(name='split')
def split(value, key):
    return value.split(key)

@register.filter(name='replace')
def replace(value, key):
    return value.replace(value, key)
