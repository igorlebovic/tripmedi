from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
      (r'^listing/(?P<procedure_name>[-\w]+)/$', 'listing'),
      (r'^procedure/(?P<procedure_name>[-\w]+)/$', 'procedure'),
      (r'^search$', 'search'),
      (r'^about$', 'about'),

)