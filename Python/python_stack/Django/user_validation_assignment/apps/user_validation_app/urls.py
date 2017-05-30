from django.conf.urls import url
from . import views

urlpatterns = [
  url(r'^$', views.index),
  url(r'^check$', views.check),
  url(r'^success$', views.success),
  url(r'^del/(?P<id>\d+)$', views.delete),
]