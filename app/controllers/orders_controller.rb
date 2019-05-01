class OrdersController < ApplicationController
  def new
    Stripe.api_key = ENV['STRIPE_API_KEY_SECRET']

@stripe_checkout_session = Stripe::Checkout::Session.create(
  payment_method_types: ['card'],
  line_items: [{
    name: 'T-shirt',
    description: 'Comfortable cotton t-shirt',
    images: ['https://example.com/t-shirt.png'],
    amount: 500,
    currency: 'aud',
    quantity: 1,
  }],
  success_url: 'http://localhost:3000/success',
  cancel_url: 'http://localhost:3000/cancel',
)
  end
end
