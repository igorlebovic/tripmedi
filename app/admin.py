from models import *
from django.contrib import admin

admin.site.register(Country)
admin.site.register(CountryRegion)
admin.site.register(CountryExchangeRate)
admin.site.register(Provider)
admin.site.register(Procedure)
admin.site.register(ProviderProcedure)
admin.site.register(ProviderSurgeon)
admin.site.register(ProviderSurgeonLanguage)
admin.site.register(UserProviderProcedureSearch)

