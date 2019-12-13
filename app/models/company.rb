class Company < ApplicationRecord
<<<<<<< HEAD
    # validates :name, :address, :mobile, :presence => true
=======

   # validates :name, :address, :mobile, :presence => true

>>>>>>> 36c54aaa529e87bd6d44b77f916a5d88f25e5d0e



    belongs_to :businessline
    has_many :branches
    has_many :customers
    has_many :suppliers
    #has_many :roles
    has_many :users
    has_many :company_categories
    has_many :categories, through: :company_categories
    belongs_to :stockcurrent, optional: true

end
