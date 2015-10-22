# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Compra_de_Plutonio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('cantidad', models.FloatField()),
                ('fecha_entrega', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='Hidroelectrica',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('ocupacion', models.CharField(max_length=50)),
                ('capacidad_maxima', models.FloatField()),
                ('num_turbinas', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Nuclear',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('plutonio', models.FloatField()),
                ('num_reactores', models.IntegerField()),
                ('num_residuos', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Productor',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=50)),
                ('produccion_media', models.FloatField()),
                ('produccion_maxima', models.FloatField()),
                ('f_entrada', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='Solar',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('tipo_energia', models.CharField(default=b'fotovoltaica', max_length=20, choices=[(b'fotovoltaica', b'Fotovoltaica'), (b'termodinamica', b'Termodin\xc3\xa1mica')])),
                ('num_paneles_solares', models.IntegerField()),
                ('media_anual_hrs_sol', models.IntegerField()),
                ('productor', models.ForeignKey(to='energia.Productor')),
            ],
        ),
        migrations.CreateModel(
            name='Suministrador',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=50)),
                ('pais', models.CharField(max_length=50)),
                ('plantas_nucleares', models.ManyToManyField(to='energia.Nuclear')),
            ],
        ),
        migrations.CreateModel(
            name='Termica',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('num_hornos', models.IntegerField()),
                ('volumen_carbon_consumido', models.FloatField()),
                ('productor', models.ForeignKey(to='energia.Productor')),
            ],
        ),
        migrations.CreateModel(
            name='Transportista',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=50)),
                ('direccion', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='nuclear',
            name='productor',
            field=models.ForeignKey(to='energia.Productor'),
        ),
        migrations.AddField(
            model_name='hidroelectrica',
            name='productor',
            field=models.ForeignKey(to='energia.Productor'),
        ),
        migrations.AddField(
            model_name='compra_de_plutonio',
            name='planta_nuclear',
            field=models.ForeignKey(to='energia.Nuclear'),
        ),
        migrations.AddField(
            model_name='compra_de_plutonio',
            name='suministrador',
            field=models.ForeignKey(to='energia.Suministrador'),
        ),
        migrations.AddField(
            model_name='compra_de_plutonio',
            name='transportista',
            field=models.ForeignKey(to='energia.Transportista'),
        ),
    ]
