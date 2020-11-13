require 'stripe'

Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_51HjTnNI7QtHp5jWl6MSQoO4EJqqYP3GtMnwxva6UCtFahsHV6aftClpzsoaNhoN7IrSlE72yJokNJ8N0KwzCqHhW00nGWGjGZh'],
  secret_key:      ENV['sk_test_51HjTnNI7QtHp5jWlIWkNyQQctWtrcWQxy3b8wV2aBCllFEUennflkaUTpDQvPEnWWWumQ4MuwlDKWrb2M0Sqnp9w008LejtdDG']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
