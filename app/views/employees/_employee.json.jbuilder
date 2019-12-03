json.extract! employee, :id, :name, :apppassword, :address, :email, :image, :created_at, :updated_at
json.url employee_url(employee, format: :json)
