json.extract! product, :id, :name, :pricesell, :pricebuy, :stockvolume, :reference, :stockcost, :created_at, :updated_at
json.url product_url(product, format: :json)
