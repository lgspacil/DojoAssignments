from django.shortcuts import render
from .models import Product

# Create your views here.
def index(request):

	Product.objects.create(name="xbox", description="gaming device", weight=10, price=300, cost=100, category="electronics")
	Product.objects.create(name="playstation", description="gaming device", weight=11, price=378, cost=90, category="electronics")
	Product.objects.create(name="gamecube", description="gaming device", weight=7, price=200, cost=70, category="electronics")
	p = Product.objects.all()
	print p
	return render(request, 'products_app/index.html')

