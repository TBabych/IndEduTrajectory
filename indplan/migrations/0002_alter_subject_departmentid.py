# Generated by Django 4.1.3 on 2022-12-18 21:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('indplan', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subject',
            name='departmentId',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='department_subjects', to='indplan.department'),
        ),
    ]
