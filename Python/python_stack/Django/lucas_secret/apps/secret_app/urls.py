from django.conf.urls import url
from . import views
urlpatterns = [
  url(r'^$', views.index),
  url(r'^login$', views.login),
  url(r'^register$', views.register),
  url(r'^show_secrets$', views.show_secrets),
  url(r'^add_secret$', views.add_secret),
  url(r'^like/(?P<id>\d+)$', views.add_like),
  url(r'^delete/(?P<id>\d+)$', views.delete_secret),
  url(r'^show_popular$', views.show_popular),
  url(r'^logout$', views.logout),
  
  
]