# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-05-30 00:11
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('secret_app', '0003_auto_20170529_2252'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='secret',
            name='like_count',
        ),
    ]
