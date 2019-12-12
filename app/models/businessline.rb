class Businessline < ApplicationRecord
    # validates :description, :length => { :maximum => 500 }
   
    has_many :companies
    
end
