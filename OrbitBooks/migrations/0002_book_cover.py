# -*- coding: utf-8 -*-
# Generated by Django 1.11.15 on 2018-09-07 00:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('OrbitBooks', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='cover',
            field=models.ImageField(blank=True, upload_to='cover'),
        ),
    ]