# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-03-21 16:50
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='tb_mail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Asunto', models.CharField(default='Musculando - Gym', max_length=30000, null=True)),
                ('Mailbody', models.TextField(default='', max_length=30000, null=True)),
                ('dateCreate', models.DateField(auto_now=True)),
                ('user', models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'mailbox',
                'managed': True,
            },
        ),
    ]
