from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
      (r'^procedure/(?P<procedure_name>[-\w]+)/$', 'procedure'),
      (r'^selection/(?P<procedure_name>[-\w]+)/(?P<provider_name>[-\w]+)/$', 'selection'),
      (r'^checkout/(?P<procedure_name>[-\w]+)/(?P<provider_name>[-\w]+)/$', 'checkout'),      
      (r'^confirmation/(?P<procedure_name>[-\w]+)/(?P<provider_name>[-\w]+)/$', 'confirmation'),
      (r'^about$', 'about'),
      (r'^press$', 'press'),
)