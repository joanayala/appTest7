# Generated by Django 2.2.5 on 2019-09-14 01:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('profiles', '0003_user_votes'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='votes',
        ),
    ]