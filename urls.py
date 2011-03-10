from django.conf.urls.defaults import *
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    (r'^', include('tripmedi.app.urls')),
<<<<<<< HEAD
#    (r'^', include('tripmedi.socialauth.urls')),
=======
    #(r'^', include('tripmedi.socialauth.urls')),
>>>>>>> f315515b9f61341d490c485006406650648258f0
    (r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
)