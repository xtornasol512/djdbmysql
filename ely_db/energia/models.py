# -*- coding: utf-8 -*-
from django.db import models

# Create your models here.
class Productor(models.Model):
    nombre = models.CharField(max_length=50, unique=True)
    produccion_media = models.FloatField()
    produccion_maxima = models.FloatField()
    f_entrada = models.DateTimeField()
    def __unicode__(self):
        return self.nombre


class Hidroelectrica(models.Model):
    productor = models.ForeignKey(Productor)
    ocupacion = models.CharField(max_length=50)
    capacidad_maxima = models.FloatField()
    num_turbinas = models.IntegerField()
    def __unicode__(self):
        return "%s" % self.productor.nombre


class Solar(models.Model):
    productor = models.ForeignKey(Productor)

    FOTOVOLTAICA = 'fotovoltaica'
    TERMODINAMICA = 'termodinamica'
    tipo_energia_opciones = (
        (FOTOVOLTAICA, 'Fotovoltaica'),
        (TERMODINAMICA, 'Termodinámica'),
    )
    tipo_energia = models.CharField(max_length=20,
                                      choices=tipo_energia_opciones,
                                      default=FOTOVOLTAICA)
    num_paneles_solares = models.IntegerField()
    media_anual_hrs_sol = models.IntegerField()
    def __unicode__(self):
        return "%s" % self.productor.nombre

    
class Termica(models.Model):
    productor = models.ForeignKey(Productor)
    num_hornos = models.IntegerField()
    volumen_carbon_consumido = models.FloatField()
    def __unicode__(self):
        return "%s" % self.productor.nombre

class Nuclear(models.Model):
    productor = models.ForeignKey(Productor)
    plutonio = models.FloatField()
    num_reactores = models.IntegerField()
    num_residuos = models.IntegerField()
    def __unicode__(self):
        return "%s" % self.productor.nombre

class Suministrador(models.Model):
    nombre = models.CharField(max_length=50)
    pais = models.CharField(max_length=50)
    plantas_nucleares = models.ManyToManyField(Nuclear)
    def __unicode__(self):
        return "%s" % self.nombre

class Transportista(models.Model):
    nombre = models.CharField(max_length=50)
    direccion = models.CharField(max_length=100)
    def __unicode__(self):
        return self.nombre


class Compra_de_Plutonio(models.Model):
    cantidad = models.FloatField()
    fecha_entrega = models.DateTimeField()
    transportista = models.ForeignKey(Transportista)
    planta_nuclear = models.ForeignKey(Nuclear)
    suministrador = models.ForeignKey(Suministrador)
    def __unicode__(self):
        return "%s" % self.cantidad