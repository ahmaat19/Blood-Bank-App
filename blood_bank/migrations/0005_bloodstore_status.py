# Generated by Django 3.1 on 2020-09-04 06:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blood_bank', '0004_auto_20200903_1617'),
    ]

    operations = [
        migrations.AddField(
            model_name='bloodstore',
            name='status',
            field=models.CharField(choices=[('Stock', 'Stock'), ('Issued', 'Issued')], default='Stock', max_length=7),
        ),
    ]
