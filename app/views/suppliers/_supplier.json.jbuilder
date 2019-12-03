json.extract! supplier, :id, :name, :adress, :email, :mobile, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
