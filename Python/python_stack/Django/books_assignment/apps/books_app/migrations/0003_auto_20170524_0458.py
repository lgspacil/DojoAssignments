# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-05-24 04:58
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('books_app', '0002_book_inprint'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='inprint',
            field=models.BooleanField(default=True),
        ),
    ]