# Generated by Django 4.1.3 on 2022-12-18 21:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('indplan', '0002_alter_subject_departmentid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='institute',
            name='fullname',
            field=models.CharField(max_length=60),
        ),
    ]
