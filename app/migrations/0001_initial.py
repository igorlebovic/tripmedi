# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'UserProfile'
        db.create_table('app_userprofile', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('user', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['auth.User'], unique=True)),
            ('last_fetch_timestamp', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal('app', ['UserProfile'])

        # Adding model 'EmailList'
        db.create_table('app_emaillist', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('email_address', self.gf('django.db.models.fields.CharField')(max_length=150)),
            ('referrer_agent', self.gf('django.db.models.fields.CharField')(max_length=150)),
            ('http_request', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('signup_datetime', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal('app', ['EmailList'])

        # Adding model 'Country'
        db.create_table('app_country', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('country_name', self.gf('django.db.models.fields.CharField')(max_length=75)),
            ('FIFA_code', self.gf('django.db.models.fields.CharField')(max_length=5)),
            ('IOC_code', self.gf('django.db.models.fields.CharField')(max_length=5)),
            ('ISO_alpha_2_code', self.gf('django.db.models.fields.CharField')(max_length=2)),
            ('ISO_alpha_3_code', self.gf('django.db.models.fields.CharField')(max_length=3)),
            ('ISO_numeric_code', self.gf('django.db.models.fields.CharField')(max_length=10)),
            ('ISO_3166_2_code', self.gf('django.db.models.fields.CharField')(max_length=20)),
        ))
        db.send_create_signal('app', ['Country'])

        # Adding model 'CountryRegion'
        db.create_table('app_countryregion', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('region_name', self.gf('django.db.models.fields.CharField')(max_length=75)),
        ))
        db.send_create_signal('app', ['CountryRegion'])

        # Adding M2M table for field region_countries on 'CountryRegion'
        db.create_table('app_countryregion_region_countries', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('countryregion', models.ForeignKey(orm['app.countryregion'], null=False)),
            ('country', models.ForeignKey(orm['app.country'], null=False))
        ))
        db.create_unique('app_countryregion_region_countries', ['countryregion_id', 'country_id'])

        # Adding model 'CountryExchangeRate'
        db.create_table('app_countryexchangerate', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('country', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Country'])),
            ('exchange_rate', self.gf('django.db.models.fields.DecimalField')(max_digits=19, decimal_places=8)),
            ('last_refreshed_timestamp', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal('app', ['CountryExchangeRate'])

        # Adding model 'Provider'
        db.create_table('app_provider', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('country', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Country'])),
            ('provider_name', self.gf('django.db.models.fields.CharField')(max_length=150)),
            ('provider_latitude', self.gf('django.db.models.fields.DecimalField')(max_digits=17, decimal_places=14)),
            ('provider_longitude', self.gf('django.db.models.fields.DecimalField')(max_digits=17, decimal_places=14)),
            ('last_accredited', self.gf('django.db.models.fields.DateTimeField')()),
            ('city', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('provider_region_rank', self.gf('django.db.models.fields.IntegerField')()),
            ('provider_url', self.gf('django.db.models.fields.CharField')(max_length=300)),
        ))
        db.send_create_signal('app', ['Provider'])

        # Adding model 'Procedure'
        db.create_table('app_procedure', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('procedure_name', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('procedure_description', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('procedure_risks', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('procedure_postop_care', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('procedure_recovery_time_days', self.gf('django.db.models.fields.IntegerField')()),
            ('united_states_comparative_price', self.gf('django.db.models.fields.DecimalField')(max_digits=10, decimal_places=2)),
        ))
        db.send_create_signal('app', ['Procedure'])

        # Adding model 'MedicalCategory'
        db.create_table('app_medicalcategory', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('medical_category_name', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal('app', ['MedicalCategory'])

        # Adding M2M table for field medicalcategory_procedures on 'MedicalCategory'
        db.create_table('app_medicalcategory_medicalcategory_procedures', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('medicalcategory', models.ForeignKey(orm['app.medicalcategory'], null=False)),
            ('procedure', models.ForeignKey(orm['app.procedure'], null=False))
        ))
        db.create_unique('app_medicalcategory_medicalcategory_procedures', ['medicalcategory_id', 'procedure_id'])

        # Adding model 'ProviderProcedure'
        db.create_table('app_providerprocedure', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('provider', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Provider'])),
            ('procedure', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Procedure'])),
            ('specialty', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('procedure_rank', self.gf('django.db.models.fields.IntegerField')()),
            ('price', self.gf('django.db.models.fields.DecimalField')(max_digits=10, decimal_places=2)),
            ('price_valid_until_timestamp', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal('app', ['ProviderProcedure'])

        # Adding model 'Surgeon'
        db.create_table('app_surgeon', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('surgeon_first_name', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('surgeon_last_name', self.gf('django.db.models.fields.CharField')(max_length=75)),
            ('surgeon_bio', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('surgeon_awards', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('surgeon_degrees', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('surgeon_bibliography', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('surgeon_price', self.gf('django.db.models.fields.DecimalField')(max_digits=10, decimal_places=2)),
        ))
        db.send_create_signal('app', ['Surgeon'])

        # Adding M2M table for field surgeon_providers on 'Surgeon'
        db.create_table('app_surgeon_surgeon_providers', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('surgeon', models.ForeignKey(orm['app.surgeon'], null=False)),
            ('procedure', models.ForeignKey(orm['app.procedure'], null=False))
        ))
        db.create_unique('app_surgeon_surgeon_providers', ['surgeon_id', 'procedure_id'])

        # Adding model 'SurgeonLanguage'
        db.create_table('app_surgeonlanguage', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('surgeon', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Surgeon'])),
            ('language', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('language_skill', self.gf('django.db.models.fields.CharField')(max_length=50)),
        ))
        db.send_create_signal('app', ['SurgeonLanguage'])

        # Adding model 'UserProviderProcedureSearch'
        db.create_table('app_userproviderproceduresearch', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('user', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['auth.User'])),
            ('provider', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Provider'])),
            ('procedure', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['app.Procedure'])),
            ('airfare_API', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('airfare_price', self.gf('django.db.models.fields.DecimalField')(max_digits=10, decimal_places=2)),
            ('hotel_API', self.gf('django.db.models.fields.CharField')(max_length=500)),
            ('hotel_price', self.gf('django.db.models.fields.DecimalField')(max_digits=10, decimal_places=2)),
            ('searched_on_datetime', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
        ))
        db.send_create_signal('app', ['UserProviderProcedureSearch'])


    def backwards(self, orm):
        
        # Deleting model 'UserProfile'
        db.delete_table('app_userprofile')

        # Deleting model 'EmailList'
        db.delete_table('app_emaillist')

        # Deleting model 'Country'
        db.delete_table('app_country')

        # Deleting model 'CountryRegion'
        db.delete_table('app_countryregion')

        # Removing M2M table for field region_countries on 'CountryRegion'
        db.delete_table('app_countryregion_region_countries')

        # Deleting model 'CountryExchangeRate'
        db.delete_table('app_countryexchangerate')

        # Deleting model 'Provider'
        db.delete_table('app_provider')

        # Deleting model 'Procedure'
        db.delete_table('app_procedure')

        # Deleting model 'MedicalCategory'
        db.delete_table('app_medicalcategory')

        # Removing M2M table for field medicalcategory_procedures on 'MedicalCategory'
        db.delete_table('app_medicalcategory_medicalcategory_procedures')

        # Deleting model 'ProviderProcedure'
        db.delete_table('app_providerprocedure')

        # Deleting model 'Surgeon'
        db.delete_table('app_surgeon')

        # Removing M2M table for field surgeon_providers on 'Surgeon'
        db.delete_table('app_surgeon_surgeon_providers')

        # Deleting model 'SurgeonLanguage'
        db.delete_table('app_surgeonlanguage')

        # Deleting model 'UserProviderProcedureSearch'
        db.delete_table('app_userproviderproceduresearch')


    models = {
        'app.country': {
            'FIFA_code': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'IOC_code': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'ISO_3166_2_code': ('django.db.models.fields.CharField', [], {'max_length': '20'}),
            'ISO_alpha_2_code': ('django.db.models.fields.CharField', [], {'max_length': '2'}),
            'ISO_alpha_3_code': ('django.db.models.fields.CharField', [], {'max_length': '3'}),
            'ISO_numeric_code': ('django.db.models.fields.CharField', [], {'max_length': '10'}),
            'Meta': {'object_name': 'Country'},
            'country_name': ('django.db.models.fields.CharField', [], {'max_length': '75'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        'app.countryexchangerate': {
            'Meta': {'object_name': 'CountryExchangeRate'},
            'country': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Country']"}),
            'exchange_rate': ('django.db.models.fields.DecimalField', [], {'max_digits': '19', 'decimal_places': '8'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_refreshed_timestamp': ('django.db.models.fields.IntegerField', [], {})
        },
        'app.countryregion': {
            'Meta': {'object_name': 'CountryRegion'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'region_countries': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'country_regions'", 'symmetrical': 'False', 'to': "orm['app.Country']"}),
            'region_name': ('django.db.models.fields.CharField', [], {'max_length': '75'})
        },
        'app.emaillist': {
            'Meta': {'object_name': 'EmailList'},
            'email_address': ('django.db.models.fields.CharField', [], {'max_length': '150'}),
            'http_request': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'referrer_agent': ('django.db.models.fields.CharField', [], {'max_length': '150'}),
            'signup_datetime': ('django.db.models.fields.DateTimeField', [], {})
        },
        'app.medicalcategory': {
            'Meta': {'object_name': 'MedicalCategory'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'medical_category_name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'medicalcategory_procedures': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'procedure_medicalcategories'", 'blank': 'True', 'to': "orm['app.Procedure']"})
        },
        'app.procedure': {
            'Meta': {'object_name': 'Procedure'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'procedure_description': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'procedure_name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'procedure_postop_care': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'procedure_recovery_time_days': ('django.db.models.fields.IntegerField', [], {}),
            'procedure_risks': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'united_states_comparative_price': ('django.db.models.fields.DecimalField', [], {'max_digits': '10', 'decimal_places': '2'})
        },
        'app.provider': {
            'Meta': {'object_name': 'Provider'},
            'city': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'country': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Country']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_accredited': ('django.db.models.fields.DateTimeField', [], {}),
            'provider_latitude': ('django.db.models.fields.DecimalField', [], {'max_digits': '17', 'decimal_places': '14'}),
            'provider_longitude': ('django.db.models.fields.DecimalField', [], {'max_digits': '17', 'decimal_places': '14'}),
            'provider_name': ('django.db.models.fields.CharField', [], {'max_length': '150'}),
            'provider_region_rank': ('django.db.models.fields.IntegerField', [], {}),
            'provider_url': ('django.db.models.fields.CharField', [], {'max_length': '300'})
        },
        'app.providerprocedure': {
            'Meta': {'object_name': 'ProviderProcedure'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'price': ('django.db.models.fields.DecimalField', [], {'max_digits': '10', 'decimal_places': '2'}),
            'price_valid_until_timestamp': ('django.db.models.fields.IntegerField', [], {}),
            'procedure': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Procedure']"}),
            'procedure_rank': ('django.db.models.fields.IntegerField', [], {}),
            'provider': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Provider']"}),
            'specialty': ('django.db.models.fields.BooleanField', [], {'default': 'False'})
        },
        'app.surgeon': {
            'Meta': {'object_name': 'Surgeon'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'surgeon_awards': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'surgeon_bibliography': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'surgeon_bio': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'surgeon_degrees': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'surgeon_first_name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'surgeon_last_name': ('django.db.models.fields.CharField', [], {'max_length': '75'}),
            'surgeon_price': ('django.db.models.fields.DecimalField', [], {'max_digits': '10', 'decimal_places': '2'}),
            'surgeon_providers': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'surgeon_providers'", 'symmetrical': 'False', 'to': "orm['app.Procedure']"})
        },
        'app.surgeonlanguage': {
            'Meta': {'object_name': 'SurgeonLanguage'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'language': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'language_skill': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'surgeon': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Surgeon']"})
        },
        'app.userprofile': {
            'Meta': {'object_name': 'UserProfile'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_fetch_timestamp': ('django.db.models.fields.IntegerField', [], {}),
            'user': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']", 'unique': 'True'})
        },
        'app.userproviderproceduresearch': {
            'Meta': {'object_name': 'UserProviderProcedureSearch'},
            'airfare_API': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'airfare_price': ('django.db.models.fields.DecimalField', [], {'max_digits': '10', 'decimal_places': '2'}),
            'hotel_API': ('django.db.models.fields.CharField', [], {'max_length': '500'}),
            'hotel_price': ('django.db.models.fields.DecimalField', [], {'max_digits': '10', 'decimal_places': '2'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'procedure': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Procedure']"}),
            'provider': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['app.Provider']"}),
            'searched_on_datetime': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'user': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['auth.User']"})
        },
        'auth.group': {
            'Meta': {'object_name': 'Group'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        }
    }

    complete_apps = ['app']
