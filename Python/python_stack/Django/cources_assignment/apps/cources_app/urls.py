from django.conf.urls import url
from . import views
urlpatterns = [
  url(r'^$', views.index),
  url(r'^add$', views.add),
  url(r'^remove/(?P<id>\d+)', views.remove),
  url(r'^demolish/(?P<id>\d+)', views.demolish),
  url(r'^comment/(?P<id>\d+)$', views.comment),
]