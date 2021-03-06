# Generated by Django 3.1 on 2020-09-04 13:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blood_bank', '0006_auto_20200904_1646'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bloodrequest',
            name='plasma',
            field=models.CharField(blank=True, max_length=5, null=True),
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='platelet',
            field=models.CharField(blank=True, max_length=5, null=True),
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='rbc',
            field=models.CharField(blank=True, max_length=5, null=True),
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='whole_blood',
            field=models.CharField(blank=True, max_length=5, null=True),
        ),
    ]
