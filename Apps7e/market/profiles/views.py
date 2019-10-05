from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return HttpResponse("We are here")

def editProfile(request):
    return HttpResponse("::: Edit profile form :::")
