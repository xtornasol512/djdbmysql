from django.db import models
from energia.models import Productor

# Create your models here.
class EstacionPrimaria(models.Model):
    nombre = models.CharField(max_length=50, unique= True)
    num_transformadores = models.IntegerField()
    def __unicode__(self):
        return "%s" % self.nombre


class EnergiaProducidaDiaria(models.Model):
    cantidad = models.FloatField()
    fecha_entrega = models.DateTimeField()
    estacion_primaria = models.ForeignKey(EstacionPrimaria)
    productor = models.ForeignKey(Productor)
    def __unicode__(self):
        return "%s" % self.cantidad


class RedDistribucion(models.Model):
    numero_red = models.IntegerField()
    cabezera = models.ForeignKey(EstacionPrimaria)
    def __unicode__(self):
        return "%s" % self.numero_red



class CompaniaElectrica(models.Model):
    nombre = models.CharField(max_length=50)
    redes_distribucion_propietarias = models.ManyToManyField(RedDistribucion)
    def __unicode__(self):
        return "%s" % self.nombre


class EnvioEnergiaExtra(models.Model):
    volumen_energia = models.FloatField()
    red_enviante = models.ForeignKey(RedDistribucion, related_name='red_enviante')
    red_receptora = models.ForeignKey(RedDistribucion, related_name='red_receptora')
    def __unicode__(self):
        return "%s" % self.volumen_energia


class Linea(models.Model):
    red_distribucion_perteneciente = models.ForeignKey(RedDistribucion)
    numero_linea = models.CharField(max_length=10)
    def __unicode__(self):
        return "%s" % self.numero_linea


class Subestacion(models.Model):
    linea_abastecimiento = models.ForeignKey(Linea)
    def __unicode__(self):
        return "%s" % self.linea_abastecimiento.numero_linea


class ZonaServicio(models.Model):
    subestacion_distribuidora = models.ManyToManyField(Subestacion)
    consumo_promedio = models.FloatField()
    consumidores_particulares = models.IntegerField()
    consumidores_empresas = models.IntegerField()
    consumidores_instituciones = models.IntegerField()
    def __unicode__(self):
        return "%s" % self.consumo_promedio

class Provincia(models.Model):
    codigo = models.CharField(max_length=10)
    nombre = models.CharField(max_length=50)
    zona_servicio = models.ForeignKey(ZonaServicio)
    def __unicode__(self):
        return "%s" % self.nombre
