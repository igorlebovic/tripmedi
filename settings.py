# Django settings for ecomstore project.
import os

SITE_NAME = 'Skipola'
META_KEYWORDS = 'Place orders and more over the phone'
META_DESCRIPTION = 'Skipola allows you to connect with merchants and customers in venues'

# CURRENT_PATH = os.path.abspath('.').decode('utf-8').replace('\\','/')
CURRENT_PATH = os.path.abspath(os.path.dirname(__file__).decode('utf-8'))

# Upon deployment, change to True
ENABLE_SSL = False

# Uncomment the following line after you have installed memcached on your local development machine
#CACHE_BACKEND = 'memcached://127.0.0.1:11211/'

CACHE_TIMEOUT = 60 * 60

PRODUCTS_PER_PAGE = 1
PRODUCTS_PER_ROW = 4

LOGIN_REDIRECT_URL = '/accounts/my_account/'

SESSION_COOKIE_DAYS = 90
SESSION_COOKIE_AGE = 60 * 60 * 24 * SESSION_COOKIE_DAYS 

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = False

MEDIA_URL = '/static/'

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.core.context_processors.auth',
    'django.core.context_processors.debug',
    'django.core.context_processors.i18n',
    'django.core.context_processors.media',
)

AUTH_PROFILE_MODULE = 'accounts.userprofile'

ROOT_URLCONF = 'speeqeweb.urls'

# for use with URL Canonicalization Middleware:
# this is the canonical hostname to be used by your app (required)
CANON_URL_HOST = 'www.your-domain.com'
# these are the hostnames that will be redirected to the CANON_URL_HOSTNAME 
# (optional; if not provided, all non-matching will be redirected)
CANON_URLS_TO_REWRITE = ['your-domain.com', 'other-domain.com']

# Google Checkout API credentials
GOOGLE_CHECKOUT_MERCHANT_ID = ''
GOOGLE_CHECKOUT_MERCHANT_KEY = ''
GOOGLE_CHECKOUT_URL = 'https://sandbox.google.com/checkout/api/checkout/v2/merchantCheckout/Merchant/' + GOOGLE_CHECKOUT_MERCHANT_ID

# Authorize.Net API Credentials
AUTHNET_POST_URL = 'test.authorize.net'
AUTHNET_POST_PATH = '/gateway/transact.dll'
AUTHNET_LOGIN = ''
AUTHNET_KEY = ''

# Google Analytics tracking ID
# should take the form of 'UA-xxxxxxx-x', where the X's are digits
ANALYTICS_TRACKING_ID = ''

try:
    from settings_local import *
except ImportError:
    pass

# ############ end of ecomstore settings

# Django debug toolbar
INTERNAL_IPS = ('69.86.104.75',)

def custom_show_toolbar(request):
    return True # Always show toolbar, for example purposes only.

DEBUG_TOOLBAR_CONFIG = {
    'INTERCEPT_REDIRECTS': False,
    'SHOW_TOOLBAR_CALLBACK': custom_show_toolbar,
    'HIDE_DJANGO_SQL': False,
    'TAG': 'h4',
}

# Django settings for speeqeweb project.

DEBUG = True
TEMPLATE_DEBUG = DEBUG

ADMINS = (
    ('Admin', 'root@skipola.com'),
)

MANAGERS = ADMINS

DATABASE_ENGINE = 'mysql'
DATABASE_NAME = 'mysql_speeqe'
DATABASE_USER = 'root'
DATABASE_PASSWORD = 'aerodiet'
DATABASE_HOST = ''                    # Set to empty string for localhost.
DATABASE_PORT = ''                    # Set to empty string for default.

TIME_ZONE = 'America/New_York'
LANGUAGE_CODE = 'en-us'
# the setting for USE_I18N was set to False in the ecommerce project, so I am
# keeping it above and commenting out here
#USE_I18N = True

SITE_ID = 1
SECRET_KEY = 'c2d9ccd96881c2d7604e052f68afeccd3539cfe0de8f683c74d5665904e34691'

ADMIN_MEDIA_PREFIX = '/admin_media/'

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.load_template_source',
    'django.template.loaders.app_directories.load_template_source',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.middleware.doc.XViewMiddleware',

    # from the ecommerce project
    'django.contrib.csrf.middleware.CsrfMiddleware',
    'django.contrib.flatpages.middleware.FlatpageFallbackMiddleware',
#    'djangodblog.DBLogMiddleware',
#    'speeqeweb.marketing.urlcanon.URLCanonicalizationMiddleware',
#    'speeqeweb.SSLMiddleware.SSLRedirect',
    'django.contrib.redirects.middleware.RedirectFallbackMiddleware',

    # django debug toolbar
    'debug_toolbar.middleware.DebugToolbarMiddleware',
)

ROOT_URLCONF = 'speeqeweb.urls'

MEDIA_ROOT = '/var/www/django/speeqeweb/static'
DOCUMENT_ROOT = '/var/www/django/speeqeweb/static'

TEMPLATE_DIRS = (
    'templates',
    '/var/www/django/speeqeweb/templates',
    '/var/www/django/speeqeweb/static',
    '/var/www/django/speeqeweb/static/speeqewebclient',
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.admin',
    'speeqeweb.app',

    # from the ecommerce project    
    'django.contrib.flatpages',
    'djangodblog',
    'django.contrib.sitemaps',
    'django.contrib.redirects',
    
    # django toolbar
    'debug_toolbar',
)

## Speeqe configuration settings

HTTP_DOMAIN = "skipola.com"
XMPP_DOMAIN = "skipola.com"

SESSION_COOKIE_DOMAIN = ".skipola.com"
HELP_EMAIL = 'support@skipola.com'
LOG_ROOT = '/var/log/speeqe'

# Exact and matching words to/in usernames to reject
EXACT_BAD_WORDS = ['']
MATCH_BAD_WORDS = [''] 

# Robot user to list active rooms from the muc component (disco requests)
XMPP_USER = 'robot@skipola.com'
XMPP_PASS = '05a7061646ebefad55913ffc31f199b6'
XMPP_CHAT = 'conference.skipola.com'

# Bosh server details
BOSH_HOST = "127.0.0.1"
BOSH_PORT = "5280"
BOSH_URL = "/http-bind"

# MUC rooms to list on the front page (/room/ or use dns trick)
FEATURED_ROOMS = {'Alpha Room':'/room/alpha/', 'Beta Room':'/room/beta/', }

# Mail server configuration
SMTP_SERVER = '127.0.0.1'
SMTP_PORT = 25

# Avatar settings
AVATAR_DEFAULT_SHA1 = 'f2f8ab835b10d66f9233518d1047f3014b3857cf'
AVATAR_DEFAULT_IE6 = 'b04b0e215af8ce2b7d620aaef32492c8bfc06ed5'
AVATAR_DEFAULT_DIMENSIONS = '30|30'
AVATAR_CACHE_TIMEOUT = 6000

# Allow django to serve all unknown urls as static data
SERVE_STATIC_URLS = True

# Use the DNS trick (alpha.skipola.com instead of example.com/room/alpha)
DNS_ROOM_NAMES = False

BOSH_SERVICE = 'http://skipola.com:5280/http-bind/'
JABBERID = 'root@skipola.com'
PASSWORD = 'aerodiet'
