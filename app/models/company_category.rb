class CompanyCategory < ApplicationRecord
<<<<<<< HEAD
  # validates :first_name, :last_name, :presence => true, :on => :save
  
  
=======

  #validates :first_name, :last_name, :presence => true, :on => :save



>>>>>>> 36c54aaa529e87bd6d44b77f916a5d88f25e5d0e
  belongs_to :company
  belongs_to :category
end
