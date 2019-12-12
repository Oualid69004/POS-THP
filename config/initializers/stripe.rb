Rails.configuration.stripe = {
    :publishable_key => "pk_test_C1kmnkdsPGygoN373dHrXEqZ00mrOvcv0h",
    :secret_key      => "sk_test_hkEya4yI1DjqCth1hrDbndS000vFTT6PUl"
  }
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]