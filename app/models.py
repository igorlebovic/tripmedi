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


class EmailList(models.Model):
    email_address = models.CharField(max_length=150)
    referrer_agent = models.CharField(max_length=150)
    http_request = models.CharField(max_length=500)
    signup_datetime = models.DateTimeField()

    def __unicode__(self):
        return str(self.signup_datetime) + " " + self.email_address


class Country(models.Model):
    country_name = models.CharField(max_length=75)
    FIFA_code = models.CharField(max_length=5)
    IOC_code = models.CharField(max_length=5)
    ISO_alpha_2_code = models.CharField(max_length=2)
    ISO_alpha_3_code = models.CharField(max_length=3)
    ISO_numeric_code = models.CharField(max_length=10)
    ISO_3166_2_code = models.CharField(max_length=20)

    def __unicode__(self):
        return self.country_name


class CountryRegion(models.Model):
    country = models.ForeignKey(Country)
    region_name = models.CharField(max_length=75)

    def __unicode__(self):
        return self.region_name


class CountryExchangeRate(models.Model):
    country = models.ForeignKey(Country)
    exchange_rate = models.DecimalField(max_digits=19,decimal_places=8)
    last_refreshed_timestamp = models.IntegerField()

    def __unicode__(self):
        return self.country + ": " + self.exchange_rate


# The healthcare provider - individual surgeons would enter their practice here
class Provider(models.Model):
    country = models.ForeignKey(Country)
    provider_name = models.CharField(max_length=100)
    provider_latitude = models.DecimalField(max_digits=17,decimal_places=14)
    provider_longitude = models.DecimalField(max_digits=17,decimal_places=14)
    last_accredited = models.DateTimeField()
    city = models.CharField(max_length=50)
    provider_region_rank = models.IntegerField()
    provider_url = models.CharField(max_length=300)

    def __unicode__(self):
        return self.provider_name + " - " + self.country


# The medical procedure
class Procedure(models.Model):
    procedure_name = models.CharField(max_length=100)
    procedure_description = models.CharField(max_length=500)
    procedure_risks = models.CharField(max_length=500)
    procedure_postop_care = models.CharField(max_length=500)
    procedure_recovery_time_days = models.IntegerField(
    united_states_comparative_price = models.DecimalField(max_digits=10,decimal_places=2))

    def __unicode__(self):
        return self.procedure_name


class ProviderProcedure(models.Model):
    provider = models.ForeignKey(Provider)
    procedure = models.ForeignKey(Procedure)
    specialty = models.BooleanField(default=False)
    procedure_rank = models.IntegerField()
    price = models.DecimalField(max_digits=10,decimal_places=2)
    price_valid_until_timestamp = models.IntegerField()

    def __unicode__(self):
        return self.procedure + " at " + self.provider


class MedicalCategory(models.Model):
    medical_category_name = models.CharField(max_length=100)
    medicalcategory_procedures = models.ManyToManyField(Procedure,related_name="procedure_medicalcategories")

    def __unicode__(self):
        return self.medical_category_name


# Surgeons affiliated with a provider
class Surgeon(models.Model):
    surgeon_first_name = models.CharField(max_length=50)
    surgeon_last_name = models.CharField(max_length=75)
    surgeon_bio = models.CharField(max_length=500)
    surgeon_awards = models.CharField(max_length=500)
    surgeon_degrees = models.CharField(max_length=500)
    surgeon_bibliography = models.CharField(max_length=500)
    surgeon_price = models.DecimalField(max_digits=10,decimal_places=2)
    surgeon_providers = models.ManyToManyField(Procedure,related_name="surgeon_providers")

    def __unicode__(self):
        return "Dr. " + self.surgeon_first_name + " " + self.surgeon_last_name


class SurgeonLanguage(models.Model):
    surgeon = models.ForeignKey(Surgeon)
    language = models.CharField(max_length=50)
    language_skill = models.CharField(max_length=50)

    def __unicode__(self):
        return self.language


# Saved searches
class UserProviderProcedureSearch(models.Model):
    user = models.ForeignKey(User)
    provider = models.ForeignKey(Provider)
    procedure = models.ForeignKey(Procedure)
    airfare_API = models.CharField(max_length=500)
    airfare_price = models.DecimalField(max_digits=10,decimal_places=2)
    hotel_API = models.CharField(max_length=500)
    hotel_price = models.DecimalField(max_digits=10,decimal_places=2)
    searched_on_datetime = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return str(self.searched_on_datetime) + " - " + self.procedure + " with " + self.provider
