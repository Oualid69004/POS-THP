json.extract! payment, :id, :discountPer, :discountVal, :payment, :total, :transid, :created_at, :updated_at
json.url payment_url(payment, format: :json)
