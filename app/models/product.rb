class Product < ApplicationRecord
    validates :name, :pricesell, :pricebuy, :stockvolume, :reference,  :presence => true
  
  
    has_many :typeproducts
    belongs_to :category
    belongs_to :stockcurrent, optional: true
    belongs_to :stocklevel, optional: true
    belongs_to :ticketline, optional: true
    has_many :ticketlines
    has_many :tickets, through: :ticketlines
    has_many :memories, through: :ticketlines
    has_many :memory_sales, through: :ticketlines
    has_many :purchases
end
