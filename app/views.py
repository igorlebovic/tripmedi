# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from django.http import HttpResponseRedirect
from tripmedi import settings
from django.core import urlresolvers

def index(request):
    return render_to_response('index.html')
    # return HttpResponse('blah')

def procedure(request, procedure_name, template_name="procedure.html"):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def selection(request, procedure_name, provider_name, template_name="selection.html"):
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