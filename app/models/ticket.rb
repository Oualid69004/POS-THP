class Ticket < ApplicationRecord
    belongs_to :company, optional: true
    has_many :users
    has_many :customers
    has_many :ticketlines
    has_many :products, through: :ticketlines
    belongs_to :receipt, optional: true
end
