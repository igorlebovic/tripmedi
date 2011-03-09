from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
      (r'^search$', 'search'),
      (r'^procedure/(?P<procedure_name>[-\w]+)/$', 'procedure')
)