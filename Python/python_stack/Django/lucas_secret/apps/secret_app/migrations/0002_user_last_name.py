# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-05-29 22:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('secret_app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='last_name',
            field=models.CharField(default=None, max_length=50, null=True),
        ),
    ]
