# Generated by Django 4.2 on 2023-04-19 19:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('communication', '0004_auto_20200801_0817'),
    ]

    operations = [
        migrations.AlterField(
            model_name='communicationeventtype',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
        migrations.AlterField(
            model_name='email',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
