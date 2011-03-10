# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from django.http import HttpResponseRedirect
from tripmedi import settings
from django.core import urlresolvers

def index(request):
    return render_to_response('search.html')
    # return HttpResponse('blah')

<<<<<<< HEAD
def procedure(request, procedure_name, template_name="listing.html"):
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def selection(request, template_name="selection.html"):
    if request.method == 'POST':
        postdata = request.POST.copy()
        if postdata['submit'] == 'Remove':
            cart.remove_from_cart(request)
        if postdata['submit'] == 'Update':
            cart.update_cart(request)
        if postdata['submit'] == 'Checkout':
            checkout_url = checkout.get_checkout_url(request)
            return HttpResponseRedirect(checkout_url)
    cart_items = cart.get_cart_items(request)
    page_title = 'Shopping Cart'
    cart_subtotal = cart.cart_subtotal(request)
    # need for Google Checkout button
    merchant_id = settings.GOOGLE_CHECKOUT_MERCHANT_ID
    return render_to_response(template_name, locals(),context_instance=RequestContext(request))

def checkout(request, template_name='checkout.html'):
    """ checkout form page to collect user shipping and billing information """
    if cart.is_empty(request):
        cart_url = urlresolvers.reverse('show_cart')
        return HttpResponseRedirect(cart_url)
    if request.method == 'POST':
        postdata = request.POST.copy()
        form = CheckoutForm(postdata)
        if form.is_valid():
            response = checkout.process(request)
            order_number = response.get('order_number',0)
            error_message = response.get('message','')
            if order_number:
                request.session['order_number'] = order_number
                receipt_url = urlresolvers.reverse('checkout_receipt')
                return HttpResponseRedirect(receipt_url)
        else:
            error_message = u'Correct the errors below'
    else:
        if request.user.is_authenticated():
            user_profile = profile.retrieve(request)
            form = CheckoutForm(instance=user_profile)
        else:
            form = CheckoutForm()
    page_title = 'Checkout'
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def confirmation(request, template_name='confirmation.html'):
    """ page displayed with order information after an order has been placed successfully """
    order_number = request.session.get('order_number','')
    if order_number:
        order = Order.objects.filter(id=order_number)[0]
        order_items = OrderItem.objects.filter(order=order)
    else:
        cart_url = urlresolvers.reverse('show_cart')
        return HttpResponseRedirect(cart_url)
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))
=======
def procedure(request, procedure_name, template_name="procedure.html"):
    page_title = 'Procedure'
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def listing(request, procedure_name, template_name="listing.html"):
    page_title = 'Showing Listings For %s' % (procedure_name,)
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def search(request, template_name="search.html"):
    page_title = "TripMedi - Find a Procedure"
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

def about(request, template_name="about.html"):
    page_title = "About TripMedi"
    return render_to_response(template_name, locals(), context_instance=RequestContext(request))

>>>>>>> f315515b9f61341d490c485006406650648258f0
