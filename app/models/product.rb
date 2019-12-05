class Product < ApplicationRecord
    has_many :typeproducts
    belongs_to :category
    belongs_to :stockcurrent, optional: true
    belongs_to :stocklevel, optional: true
    belongs_to :ticketline, optional: true
    has_many :ticketlines
    has_many :tickets, through: :ticketlines
    has_many :memories, through: :ticketlines
end
