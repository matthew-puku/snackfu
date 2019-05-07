class OrdersController < ApplicationController
  def new
    the_listing_id = params[:listing_id]
    @listing = Listing.find(the_listing_id)

    Stripe.api_key = ENV['STRIPE_API_KEY_SECRET']

@stripe_checkout_session = Stripe::Checkout::Session.create(
  payment_method_types: ['card'],
  line_items: [{
    name: @listing.name,
    description: @listing.description,
    images: @listing.image.url,
    amount: (@listing.price * 100).to_i ,
    currency: 'aud',
    quantity: 1,
  }],
  success_url: 'http://localhost:3000/success',
  cancel_url: 'http://localhost:3000/cancel',
)
  end
  def create
  end
end
