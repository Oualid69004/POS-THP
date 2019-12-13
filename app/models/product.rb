class Product < ApplicationRecord
<<<<<<< HEAD
    # validates :name, :pricesell, :pricebuy, :stockvolume, :reference,  :presence => true
  
    has_many :purshases
=======

   # validates :name, :pricesell, :pricebuy, :stockvolume, :reference,  :presence => true
  
  

>>>>>>> 36c54aaa529e87bd6d44b77f916a5d88f25e5d0e
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
