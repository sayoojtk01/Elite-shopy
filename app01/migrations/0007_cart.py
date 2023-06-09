# Generated by Django 4.1.3 on 2023-01-24 06:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app01', '0006_ad_reg'),
    ]

    operations = [
        migrations.CreateModel(
            name='cart',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total', models.CharField(max_length=100)),
                ('status', models.CharField(max_length=100)),
                ('pid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app01.ad_product')),
                ('uid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app01.u_reg')),
            ],
        ),
    ]