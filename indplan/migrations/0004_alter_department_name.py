# Generated by Django 4.1.3 on 2022-12-18 22:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('indplan', '0003_alter_institute_fullname'),
    ]

    operations = [
        migrations.AlterField(
            model_name='department',
            name='name',
            field=models.CharField(max_length=60),
        ),
    ]