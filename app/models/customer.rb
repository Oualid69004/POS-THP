class Customer < ApplicationRecord
<<<<<<< HEAD
    # validates :first_name, :last_name, :adress, :mobile :presence => true
    # validates :email, :confirmation => true, :uniqueness => true
=======

   # validates :first_name, :last_name, :adress, :mobile :presence => true
   # validates :email, :confirmation => true, :uniqueness => true
>>>>>>> 36c54aaa529e87bd6d44b77f916a5d88f25e5d0e
    

    belongs_to :company,optional: true
    belongs_to :ticket,optional: true
end
