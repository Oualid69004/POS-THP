class CompanyCategory < ApplicationRecord

  # validates :first_name, :last_name, :presence => true, :on => :save
  
  

  belongs_to :company
  belongs_to :category
end
