# -*- coding: utf-8 -*-
# Generated by Django 1.11.15 on 2018-09-07 05:09
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('OrbitBooks', '0008_sponsor_country'),
    ]

    operations = [
        migrations.AddField(
            model_name='sponsor',
            name='logo',
            field=models.ImageField(blank=True, upload_to='logo'),
        ),
    ]
