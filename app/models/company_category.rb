class CompanyCategory < ApplicationRecord
  # validates :first_name, :last_name, :presence => true,
  
  
  belongs_to :company
  belongs_to :category
end
