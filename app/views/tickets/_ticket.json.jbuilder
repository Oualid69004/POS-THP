json.extract! ticket, :id, :discount, :status, :ticketCost, :ticketDate, :ticketNumber, :ticketTotal, :ticketid, :tickettype, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
