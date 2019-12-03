json.extract! ticketline, :id, :attributes, :line, :price, :taxid, :unitCost, :units, :unitsRefund, :created_at, :updated_at
json.url ticketline_url(ticketline, format: :json)
