from django.contrib import admin

from .models import (EstacionPrimaria, EnergiaProducidaDiaria, RedDistribucion, CompaniaElectrica,
                    EnvioEnergiaExtra, Linea, Subestacion, ZonaServicio, Provincia)


admin.site.register(EstacionPrimaria)
admin.site.register(EnergiaProducidaDiaria)
admin.site.register(RedDistribucion)
admin.site.register(CompaniaElectrica)
admin.site.register(EnvioEnergiaExtra)
admin.site.register(Linea)
admin.site.register(Subestacion)
admin.site.register(ZonaServicio)
admin.site.register(Provincia)

# Register your models here.
