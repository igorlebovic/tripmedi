from django.conf.urls.defaults import *

urlpatterns = patterns('tripmedi.app.views',
      (r'^$', 'index'),
      (r'^people$', 'people'),
)
