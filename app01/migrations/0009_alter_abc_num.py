# Generated by Django 4.1.3 on 2023-02-02 03:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app01', '0008_abc'),
    ]

    operations = [
        migrations.AlterField(
            model_name='abc',
            name='num',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app01.u_reg'),
        ),
    ]
