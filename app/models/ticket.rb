class Ticket < ApplicationRecord
    belongs_to :branch
    has_many :users
    has_many :customers
    has_many :ticketlines
    belongs_to :receipt
    
end
