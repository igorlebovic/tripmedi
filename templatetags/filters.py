from django import template

register = template.Library()

@register.inclusion_tag("_header.html") 
def header():
	return {'var': 'null' }

@register.inclusion_tag("_footer.html") 
def footer():
	return {'var': 'null' }