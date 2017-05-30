from django.shortcuts import render, redirect
# from IPython import embed
# Create your views here.
def index(request):
  return render(request, 'shanes_app/index.html')

def form_process(request):
    if request.method =='POST':
        email = request.POST['email']
        # print email
        # print 'hello'
    # print 'hello'
    # embed()
    # return render(request, "shanes_app/index.html")
    return redirect('/')

def user_id(request,id):
    context = {
    'id': id
    }
    return render(request,"shanes_app/user.html", context)


def user_id_edit(request,id):
    return render(request, "shanes_app/edit.html")

