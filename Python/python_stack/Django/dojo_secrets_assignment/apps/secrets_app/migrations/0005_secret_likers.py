# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-05-27 05:22
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('secrets_app', '0004_like'),
    ]

    operations = [
        migrations.AddField(
            model_name='secret',
            name='likers',
            field=models.ManyToManyField(related_name='likedsecrets', to='secrets_app.User'),
        ),
    ]
