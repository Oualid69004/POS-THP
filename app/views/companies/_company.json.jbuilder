json.extract! company, :id, :name, :address, :logo, :mobile, :created_at, :updated_at
json.url company_url(company, format: :json)
