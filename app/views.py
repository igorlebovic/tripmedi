# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.template import RequestContext

def index(request):
    return render_to_response('index.html')
    # return HttpResponse('blah')

def procedure(request, procedure_name, template_name="procedure.html"):
    page_title = 'Procedure'
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))