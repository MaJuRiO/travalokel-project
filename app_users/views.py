from django.shortcuts import render
from app_users.forms import RegisterForm
from django.http import HttpRequest , HttpResponseRedirect
from django.contrib.auth import login
from django.urls import reverse
# Create your views here.

def register(request: HttpRequest):
    if request.method == "POST" :
        form = RegisterForm(request.POST)
        if form.is_valid():
            user = form.save()              #เก็บข้อมูลที่ register ในตัวแปรก user
            login(request, user)  
            return HttpResponseRedirect(reverse("home"))          
    else:
        form = RegisterForm

    form = RegisterForm()
    context = {"form":form}
    return render(request, "app_users/register.html",context)
