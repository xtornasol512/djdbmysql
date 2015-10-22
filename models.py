# -*- coding: utf-8 -*-

from django.db import models
from datetime import datetime

# Create your models here.
class Product(models.Model):
    code = models.CharField(max_length=15)
    name = models.CharField(max_length=250)
    description = models.TextField()
    class Meta:
        ordering = ['name']


class Customer(models.Model):
    code = models.CharField(max_length=15)
    name = models.CharField(max_length=250)
    address = models.CharField(max_length=250)
    phone = models.CharField(max_length=250)
    email = models.EmailField()
    class Meta:
        ordering = ['name']

TIPO_COBRANZA = (
    (1, 'OFICINA 10%'),
    (2, 'DOMIC GRUPO TC 10%'),
    (3, 'DOMIC GRUPO TD 10%'),
    (4, 'OXXO 10%'),
    (5, 'CIES 10%'),
    (6, 'DOMIC SANTANDER'),
    (7, 'DOMIC COMER TD 10%'),
    (8, 'CONTADO Y SEMICONTADO'),
)

MODALIDAD_COBRANZA = (
    (1, 'A domicilio'),
    (2, 'Debito automatico'),
)


class Proposal(models.Model):
    code = models.PositiveIntegerField()
    product = models.ForeignKey('Product')
    customer = models.ForeignKey('Customer')
    seller = models.CharField(max_length=250)
    qty_fee = models.PositiveIntegerField()
    amount_fee = models.FloatField()
    billing_zone = models.CharField(choices=TIPO_COBRANZA, max_length=250)
    mode = models.CharField(choices=MODALIDAD_COBRANZA, max_length=250)
    class Meta:
        ordering = ['code']

TIPO_LLAMADA = (
    (1, 'Llamada de calidad'),
    (2, 'Validacion'),
)

STATUS_LLAMADA = (
    (1, 'Realizada'),
    (2, 'No contactado'),
    (3, 'Blanco'),
    (4, 'Validada con correccion'),
    (5, 'Validada'),
)


class Call(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    folio = models.CharField(max_length=17, blank=True, null=True, db_index=True)
    proposal = models.ForeignKey('Proposal')
    survey_id = models.CharField(max_length=25)
    status = models.CharField(choices=STATUS_LLAMADA, max_length=250)
    type = models.CharField(choices=TIPO_LLAMADA, max_length=250)
    comments = models.TextField()
    corrections = models.TextField()
