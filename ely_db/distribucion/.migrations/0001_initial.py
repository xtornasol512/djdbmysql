# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('energia', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CompaniaElectrica',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='EnergiaProducidaDiaria',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('cantidad', models.FloatField()),
                ('fecha_entrega', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='EnvioEnergiaExtra',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('volumen_energia', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='EstacionPrimaria',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=50)),
                ('num_transformadores', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Linea',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('numero_linea', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Provincia',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('codigo', models.CharField(max_length=10)),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='RedDistribucion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('numero_red', models.IntegerField()),
                ('cabezera', models.ForeignKey(to='distribucion.EstacionPrimaria')),
            ],
        ),
        migrations.CreateModel(
            name='Subestacion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('linea_abastecimiento', models.ForeignKey(to='distribucion.Linea')),
            ],
        ),
        migrations.CreateModel(
            name='ZonaServicio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('consumo_promedio', models.FloatField()),
                ('consumidores_particulares', models.IntegerField()),
                ('consumidores_empresas', models.IntegerField()),
                ('consumidores_instituciones', models.IntegerField()),
                ('subestacion_distribuidora', models.ManyToManyField(to='distribucion.Subestacion')),
            ],
        ),
        migrations.AddField(
            model_name='provincia',
            name='zona_servicio',
            field=models.ForeignKey(to='distribucion.ZonaServicio'),
        ),
        migrations.AddField(
            model_name='linea',
            name='red_distribucion_perteneciente',
            field=models.ForeignKey(to='distribucion.RedDistribucion'),
        ),
        migrations.AddField(
            model_name='envioenergiaextra',
            name='red_enviante',
            field=models.ForeignKey(related_name='red_enviante', to='distribucion.RedDistribucion'),
        ),
        migrations.AddField(
            model_name='envioenergiaextra',
            name='red_receptora',
            field=models.ForeignKey(related_name='red_receptora', to='distribucion.RedDistribucion'),
        ),
        migrations.AddField(
            model_name='energiaproducidadiaria',
            name='estacion_primaria',
            field=models.ForeignKey(to='distribucion.EstacionPrimaria'),
        ),
        migrations.AddField(
            model_name='energiaproducidadiaria',
            name='productor',
            field=models.ForeignKey(to='energia.Productor'),
        ),
        migrations.AddField(
            model_name='companiaelectrica',
            name='redes_distribucion_propietarias',
            field=models.ManyToManyField(to='distribucion.RedDistribucion'),
        ),
    ]
