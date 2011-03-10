from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
<<<<<<< HEAD
      (r'^procedure/(?P<procedure_name>[-\w]+)/$', 'procedure'),
      (r'^selection/(?P<procedure_name>[-\w]+)/$', 'selection'),
      (r'^checkout/(?P<procedure_name>[-\w]+)/$', 'checkout'),      
      (r'^confirmation$', 'confirmation'),
=======
      (r'^listing/(?P<procedure_name>[-\w]+)/$', 'listing'),
      (r'^procedure/(?P<procedure_name>[-\w]+)/$', 'procedure'),
      (r'^search$', 'search'),
      (r'^about$', 'about'),

>>>>>>> f315515b9f61341d490c485006406650648258f0
)