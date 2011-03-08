from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
      (r'^procedure/(?P<procedure_name>[-\w]+)/$', 'procedure')
)