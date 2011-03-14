# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from django.http import HttpResponseRedirect
from tripmedi import settings
from django.core import urlresolvers
import tripmedi.app.models 
import itertools
import random

def index2(request, template_name='index2.html'):
    category_list = tripmedi.app.models.MedicalCategory.objects.all()[:3]
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def index(request, template_name='index2.html'):
    category_list = tripmedi.app.models.MedicalCategory.objects.all()[:3]
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def procedure(request, procedure_name, template_name="procedure.html"):
    selected_procedure = tripmedi.app.models.Procedure.objects.get(pk=int(procedure_name))
    poss_providers = selected_procedure.providerprocedure_set.order_by('procedure_rank').all()[:5]
    all_countries_count = poss_providers.count()
    random_country_list = ', '.join([str(x.provider.country.country_name) for x in poss_providers[:3]])
    hours = range(3,20)
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def selection(request, procedure_id, provider_id, template_name="selection.html"):
    provider = tripmedi.app.models.Provider.objects.get(pk=int(provider_id))
    procedure = tripmedi.app.models.Procedure.objects.get(pk=int(procedure_id))
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def checkout(request, procedure_name, provider_name, template_name="checkout.html"):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def confirmation(request, procedure_name, provider_name, template_name="confirmation.html"):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

# views for press releases and team bio
def about(request, template_name='about.html'):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def press(request, template_name='press.html'):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))
    
def tourism(request, template_name='tourism.html'):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))
