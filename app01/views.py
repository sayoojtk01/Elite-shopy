from django.shortcuts import render,redirect
from django.http import HttpResponseRedirect
from.models import *
import datetime

# Create your views here.

def about(request):
	return render(request,'about.html')

def contact(request):
	return render(request,'contact.html')

def index(request):
	return render(request,'index.html')

def shopnow(request):
	return render(request,'shopnow.html')

def services(request):
	return render(request,'services.html')

def head(request):
	return render(request,'head.html')


def register(request):
	if request.method=='POST':
		name=request.POST['name']
		email=request.POST['email']
		password=request.POST['password']
		phone=request.POST['phone']
		check=u_reg.objects.filter(email=email)
		if check:
			return render(request,'register.html',{"error":"email has already taken"})
		else:
			user=u_reg(name=name,email=email,password=password,phone=phone)
			user.save()
			return render(request,'index.html')
	else:
	   	return render(request,'register.html')

def login(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		check=u_reg.objects.filter(email=email,password=password)
		if check:
			for x in check:
				request.session['myid']=x.id
				request.session['myname']=x.name
				return render(request,'index.html',{"success":"Logged  In"})
		else:
			return render(request,'login.html',{"error":"Invalid Data"})
	else:
		return render(request,'login.html')

def logout(request):
	if request.session.has_key('myid'):
		del request.session['myid']
		del request.session['myname']
		return  HttpResponseRedirect('/')

	else:
		return redirect('/')

def display(request):
	data=u_reg.objects.all()
	return render(request,'display.html',{'datas':data})

def update(request):
	if request.method=='POST':
		name=request.POST['name']
		email=request.POST['email']
		password=request.POST['password']
		phone=request.POST['phone']
		regid=request.GET['regid']
		data=u_reg.objects.filter(id=regid).update(name=name,email=email,password=password,phone=phone)
		return redirect('/display/')
	else:
		regid=request.GET['regid']
		data=u_reg.objects.filter(id=regid)
		return render(request,'update.html',{'data':data})

def delete(request):
	regid=request.GET['regid']
	data=u_reg.objects.filter(id=regid).delete()
	return redirect('/display')

def single(request):	
	pid=request.GET['pid']
	query=ad_product.objects.filter(id=pid)
	return render(request,'single.html',{"data":query})

def mens(request):
	query=ad_product.objects.filter(category="Men's Wear")
	return render(request,'mens.html',{"data":query})

def womens(request):
	query=ad_product.objects.filter(category="Women's Wear")
	return render(request,'womens.html',{"data":query})

def addtocart(request):
	if request.session.has_key('myid'):
		if request.method=='POST':
			pid=request.GET['pid']
			prd=ad_product.objects.filter(id=pid)
			for x in prd:
				price=x.offer
				qty=1
			total=int(price)*int(qty)
			prdid=ad_product.objects.get(id=pid)
			num=request.session['myid']
			userid=u_reg.objects.get(id=num)
			check=ad_cart.objects.filter(num=num,pid=pid,status="pending")
			if check:
				data=ad_cart.objects.filter(num=num,status="pending")
				total=0
				for x in data:
					price=x.total
					total=int(price)+total
					return render(request,"cart.html",{"data":data,"error":"already exist","total":total})
			else:
				add=ad_cart(num=userid,pid=prdid,total=total,status="pending")
				add.save()
				data=ad_cart.objects.filter(num=num,status="pending")
				total=0
				for x in data:
					price=x.total
					total=int(price)+total
				return render(request,"cart.html",{"data":data,"total":total})
		else:
			pid=request.GET['pid']
			query=ad_product.objects.filter(id=pid)
			return render(request,'single.html',{"data":query})



	else:
		return redirect('/login/')


def cart(request):
	num=request.session['myid']
	data=ad_cart.objects.filter(num=num,status="pending")
	total=0
	for x in data:
		price=x.total
		total=int(price)+total

	return render(request,"cart.html",{"data":data,"total":total})

def upayment(request):
	if request.method == "POST":
		num=request.session['myid']
		userid=u_reg.objects.get(id=num)
		amount=request.POST['total']
		cdate=datetime.datetime.now().date()

		add=payment(uid=userid,date=cdate,total=amount,status="paid")
		add.save()
		ad_cart.objects.filter(num=num,status="pending").update(status="paid")
		return HttpResponseRedirect("/")
	else:
		price=request.GET['gt']
		return render(request,'payment/index.html',{"total":price})


################################################################################################################################
#################################################ADMIN###################################################################
def ad_index(request):
	return render(request,'admin/index.html')

def ad_form(request):
	if request.method=='POST':
		name=request.POST['name']
		price=request.POST['price']
		offer=request.POST['offer']
		image=request.FILES['image']
		category=request.POST['category']
		check=ad_product.objects.filter(name=name)
		if check:
			return render(request,'admin/input.html',{"error":"already registered product"})
		else:
			user=ad_product(name=name,price=price,offer=offer,image=image,category=category)
			user.save()
			return render(request,'admin/input.html',{"success":"product saved"})
	else:
		return render(request,'admin/input.html')

# def ad_signin(request):
# 	return render(request,'admin/signin.html')

# def ad_signup(request):
# 	return render(request,'admin/signup.html')

def ad_table(request):
	data=ad_product.objects.all()
	return render(request,'admin/tabels.html',{'datas':data})

def ad_register(request):
	if request.method=='POST':
		name=request.POST['name']
		email=request.POST['email']
		password=request.POST['password']
		phone=request.POST['phone']
		check=ad_reg.objects.filter(email=email)
		if check:
			return render(request,'admin/signup.html',{"error":"email has already taken"})
		else:
			user=ad_reg(name=name,email=email,password=password,phone=phone)
			user.save()
			return render(request,'admin/index.html')
	else:
		return render(request,'admin/signup.html')

def ad_login(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		check=ad_reg.objects.filter(email=email,password=password)
		if check:
			for x in check:
				request.session['myid']=x.id
				request.session['myname']=x.name
				return render(request,'admin/index.html',{"success":"Logged  In"})
		else:
			return render(request,'admin/signin.html',{"error":"Invalid Data"})
	else:
		return render(request,'admin/signin.html')

def ad_logout(request):
	if request.session.has_key('myid'):
		del request.session['myid']
		del request.session['myname']
		return  HttpResponseRedirect('/adindex/')

	else:
		return redirect('/adindex/')


# def ad_display(request):
# 	data=u_reg.objects.all()
# 	return render(request,'admin/display.html',{'datas':data})

def ad_update(request):
	if request.method=='POST':
		name=request.POST['name']
		price=request.POST['price']
		offer=request.POST['offer']
		image=request.FILES['image']
		category=request.POST['category']
		regid=request.GET['regid']
		data=ad_product.objects.filter(id=regid).update(name=name,price=price,offer=offer,image=image,category=category)
		return redirect('/adtable/')
	else:
		regid=request.GET['regid']
		data=ad_product.objects.filter(id=regid)
		return render(request,'admin/ad_update.html',{'data':data})

def ad_delete(request):
	regid=request.GET['regid']
	data=ad_product.objects.filter(id=regid).delete()
	return redirect('/adtable/')


	

