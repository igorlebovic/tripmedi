from django import template

register = template.Library()

@register.inclusion_tag("tags/_header.html") 
def header():
	return {'var': 'null' }

@register.inclusion_tag("tags/_footer.html") 
def footer():
	return {'var': 'null' }