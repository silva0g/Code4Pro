Rails.configuration.stripe = {
  :publishable_key => 'pk_test_9m9l9NRVKIcSefRopd7RI51d',
  :secret_key      => 'sk_test_ufWZ9cAMrTb2nUOQa8OIMlfi'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]