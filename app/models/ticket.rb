class Ticket < ApplicationRecord
    belongs_to :branch
    has_many :employees
    has_many :customers
    has_many :ticketlines
    belongs_to :receipt
    
end
