from django.shortcuts import render,redirect
from django.http import HttpResponse

from django.views.generic import View
from django.http import JsonResponse
from django import forms
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.forms.models import model_to_dict
from django.db.models import Max
from django.db import transaction
from .models import *
import json
import re
from django.db import connection
from django.http import HttpResponseRedirect

# Create your views here.

def index(request):
    return render(request, 'index.html')

def booking(request):
    return render(request,'booking.html')

def bookingflight(request):
    return render(request, 'ticket_info.html')

def Addpassenger(request):
    if request.method == 'POST':
        if Passenger.objects.count() != 0:
            id_no_max = Passenger.objects.aggregate(Max('id_no'))['id_no__max']
            id_no_temp = [re.findall(r'(\w+?)(\d+)', id_no_max)[0]][0]
            next_id_no = id_no_temp[0] + str(int(id_no_temp[1])+1)
        else:
            next_id_no = "7215"
        fname = request.POST['First_name']
        lname = request.POST['Last_name']
        email = request.POST['email']
        phone = request.POST['phonenumber']
            
            
        passenger = Passenger.objects.create(
                id_no=next_id_no,
                first_name=fname, 
                last_name=lname, 
                email=email,
                phone_no=phone)
        try:passenger.save()
        except: redirect('/')

    return render(request,'payment.html')

def createticket(flight_id,departure_date,seat_class,total_amount,username):
        
    if Ticket.objects.count() != 0:
        ticket_id_max = Ticket.objects.aggregate(Max('ticket_id'))['ticket_id__max']
        next_ticket_id = ticket_id_max[0:2] + str(int(ticket_id_max[2:5])+1)
    else:
        next_ticket_id = "TK100"

    status = False
    if status == True:
        status = 'CONFIRMED'
    else: 
        status = 'PENDING'

    ticket_id = next_ticket_id
    date = reFormatDateYYYYMMDD(departure_date)

    print(ticket_id,flight_id,date,seat_class,status)
    ticket = Ticket.objects.create(
            ticket_id=ticket_id,
            flight_id_id=flight_id,
            seat_class=seat_class,
            status=status,
            total_amount=total_amount,
            departure_date=date,
            username =username         
            )
    ticket.save()

    return ticket

class CityList(View):
    def get(self,request):
        cities = list(City.objects.values('city_name'))
        data = dict()
        data['cities'] = cities
        return JsonResponse(data)

class PathList(View):
    def get(self,request):
        paths = list(Path.objects.all().values())
        data = dict()
        data['paths'] = paths
        
        return JsonResponse(data)

class PathDetail(View):
    def get(self, request, id):
        path = list(Path.objects.select_related("city").filter(path_id=id).values('path_id','departure__city_name','destination__city_name','departure__airport','destination__airport'))
        path_detail = list(Flight.objects.select_related("flight_id").filter(path_id=id).values('flight_id','airline','departure_time','arrival_time','path_id__departure','path_id__destination','flight_id__seat_class'))
        data = dict()
        data['path'] = path[0]
        data['path_detail'] = path_detail

        return JsonResponse(data)

class ClassList(View):
    def get(self, request):
        seat_classes = list(FlightClass.objects.all().values())
        data = dict()
        data['seat_classes'] = seat_classes
        return JsonResponse(data) 

class FlightList(View):
    def get(self, request, start, goal, date, seat_type):
        paths = list(Path.objects.filter(departure=start,destination=goal).values())
        cities = list(City.objects.filter(city_id=start).values())
        cities2 = list(City.objects.filter(city_id=goal).values())
        flights = list(Flight.objects.select_related('destination','departure','path_id').filter(
            path_id=Path.objects.filter(departure=start,destination=goal).values('path_id')[0]["path_id"],departure_date=date).values())
        #flight_detail = list(FlightClass.objects.select_related("flight_id").filter(flight_id=flight_id).values('flight_id','seat_class','price'))
        data = dict()
        data['paths'] = paths[0]
        data['flights'] = flights
        data['cities'] = cities[0]
        data['cities2'] = cities2[0]
        #data['flight_detail'] = flight_detail[0]
        data['seatclass'] = seat_type
        print(Flight.objects.select_related('destination','departure','path_id').filter(
            path_id=Path.objects.filter(departure=start,destination=goal).values('path_id')[0]["path_id"],departure_date=date).values('flight_id'))
        return render(request, 'ticket_list.html', data)

class FlightDetail(View):
    def get(self, request, id):
        flight = list(Flight.objects.filter(flight_id=id).values('flight_id','airline','path_id','departure_time','arrival_time','duration','arrival_date', 'departure_date'))
        flight_detail = list(FlightClass.objects.select_related("flight_id").filter(flight_id=id).values('flight_id','seat_class','price'))
        paths = list(Path.objects.filter(path_id=Flight.objects.filter(flight_id=id).values('path_id')[0]["path_id"]).values())
        
        data = dict()
        data['flight'] = flight[0]
        data['flight_detail'] = flight_detail[0]
        data['paths'] = paths[0]
        return JsonResponse(data)

def reFormatDateMMDDYYYY(ddmmyyyy):
        if (ddmmyyyy == ''):
            return ''
        return ddmmyyyy[8:10] + "-" + ddmmyyyy[5:7] + "-" + ddmmyyyy[:4]

def reFormatDateYYYYMMDD(yyyymmdd):
    if (yyyymmdd == ''):
            return ''
    return yyyymmdd[6:10] + "-" + yyyymmdd[3:5] + "-" + yyyymmdd[:2]

def reFormatNumber(str):
        if (str == ''):
            return ''
        return str.replace(",", "")