class Category < ApplicationRecord
<<<<<<< HEAD
    # validates :name, :presence => true
=======

 #   validates :name, :presence => true
>>>>>>> 36c54aaa529e87bd6d44b77f916a5d88f25e5d0e
    

    has_many :products
    has_many :company_categories
    has_many :companies, through: :company_categories
end
