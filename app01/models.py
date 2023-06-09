from django.db import models

# Create your models here.
# class mytab(models.Model):
# 	name=models.CharField(max_length=100)
# 	email=models.CharField(max_length=200)
# 	password=models.CharField(max_length=100)
# 	phone=models.CharField(max_length=100)

# class cont_tb(models.Model):
# 	f_name= models.CharField(max_length=200)
# 	l_name=models.CharField(max_length=200)
# 	email=models.CharField(max_length=200)
# 	phone=models.CharField(max_length=200)
# 	message=models.CharField(max_length=300)

class u_reg(models.Model):
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=200)
	password=models.CharField(max_length=100)
	phone=models.CharField(max_length=100)
	
class ad_product(models.Model):
	name=models.CharField(max_length=100)
	price=models.CharField(max_length=100)
	offer=models.CharField(max_length=100)
	image=models.ImageField(upload_to='product/')
	category=models.CharField(max_length=100)

class ad_reg(models.Model):
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=200)
	password=models.CharField(max_length=100)
	phone=models.CharField(max_length=100)



# class cart(models.Model):
# 	uid=models.ForeignKey(u_reg, on_delete=models.CASCADE)
# 	pid=models.ForeignKey(ad_product, on_delete=models.CASCADE)
# 	total=models.CharField(max_length=100)
# 	status=models.CharField(max_length=100)

 
class ad_cart(models.Model):
 	num=models.ForeignKey(u_reg, on_delete=models.CASCADE)
 	pid=models.ForeignKey(ad_product, on_delete=models.CASCADE)
 	total=models.CharField(max_length=100)
 	status=models.CharField(max_length=100)

class payment(models.Model):
	uid=models.ForeignKey(u_reg, on_delete=models.CASCADE)
	date=models.CharField(max_length=100)
	total=models.CharField(max_length=100)
	status=models.CharField(max_length=100)



	