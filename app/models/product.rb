class Product < ApplicationRecord
    has_many :typeproducts
    belongs_to :category
    belongs_to :stockcurrent
    belongs_to :stocklevel 
    belongs_to :ticketline
      
      
      
end
