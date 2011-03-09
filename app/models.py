from django.db import models
from django.contrib.auth.models import User


# The additional information about users (not included in the Django User model)
class UserProfile(models.Model):
    # Links to django auth user object
    user = models.ForeignKey(User, unique=True)

    # All our custom fields go here
    last_fetch_timestamp = models.IntegerField()

#        def first_time_user_init(self):                                                                            
#            print "HEY"                                                                                            
#                fsq = foursquare(User = self.user)                                                                 
#                fsq.userVenueHistory();


class Country(models.Model):
    country_name = models.CharField(max_length=75)
    FIFA_code = models.CharField(max_length=5)
    IOC_code = models.CharField(max_length=5)
    ISO_alpha_2_code = models.CharField(max_length=2)
    ISO_alpha_3_code = models.CharField(max_length=3)
    ISO_numeric_code = models.CharField(max_length=10)
    ISO_3166_2_code = models.CharField(max_length=20)


class CountryExchangeRate(models.Model):
    country = models.ForeignKey(Country)
    exchange_rate = models.DecimalField(max_digits=19,decimal_places=8)
    last_refreshed_timestamp = models.IntegerField()


class Procedure(models.Model):
    procedure_name = models.CharField(max_length=100)

    def __unicode__(self):
        return self.procedure_name


class ProcedureRisk(models.Model):
    procedure = models.ForeignKey(Procedure)


class Provider(models.Model):
    country = models.ForeignKey(Country)
    provider_name = models.CharField(max_length=100)
    provider_latitude = models.DecimalField(max_digits=17,decimal_places=14)
    provider_longitude = models.DecimalField(max_digits=17,decimal_places=14)
    last_accredited = models.DateTimeField()


class ProviderProcedure(models.Model):
    provider = models.ForeignKey(Provider)
    specialty = models.BooleanField(blank=False)
    cost = models.DecimalField(max_digits=10,decimal_places=2)


class ProviderReputation(models.Model):
    provider = models.ForeignKey(Provider)

