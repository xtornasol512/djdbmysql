from django.contrib import admin

# Register your models here.
from .models import (Productor, Hidroelectrica, Solar, Termica, Nuclear,
                    Suministrador, Transportista, Compra_de_Plutonio)

admin.site.register(Productor)
admin.site.register(Hidroelectrica)
admin.site.register(Solar)
admin.site.register(Termica)
admin.site.register(Nuclear)
admin.site.register(Suministrador)
admin.site.register(Transportista)
admin.site.register(Compra_de_Plutonio)