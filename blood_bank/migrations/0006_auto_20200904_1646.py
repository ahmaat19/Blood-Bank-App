# Generated by Django 3.1 on 2020-09-04 13:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blood_bank', '0005_bloodstore_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bloodrequest',
            name='patient_id',
            field=models.CharField(max_length=10, unique=True),
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='plasma',
            field=models.CharField(blank=True, default=' ', max_length=5),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='platelet',
            field=models.CharField(blank=True, default=' ', max_length=5),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='rbc',
            field=models.CharField(blank=True, default='', max_length=5),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='bloodrequest',
            name='whole_blood',
            field=models.CharField(blank=True, default='', max_length=5),
            preserve_default=False,
        ),
    ]
