from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
      (r'^index2$', 'index2'),
      (r'^procedure/(?P<procedure_name>[-\d]+)/$', 'procedure'),
      (r'^selection/(?P<procedure_name>[-\d]+)/$', 'selection'),
      (r'^checkout/(?P<procedure_name>[-\d]+)/(?P<provider_name>[-\w]+)/$', 'checkout'),
      (r'^confirmation/(?P<procedure_name>[-\d]+)/(?P<provider_name>[-\w]+)/$', 'confirmation'),
      (r'^about$', 'about'),
      (r'^press$', 'press'),
      (r'^tourism$', 'tourism'),
)
