class Product < ApplicationRecord
    has_many :typeproducts
    belongs_to :category, optional: true
    belongs_to :stockcurrent, optional: true
    belongs_to :stocklevel,  optional: true
    belongs_to :ticketline, optional: true
      
      
      
end
