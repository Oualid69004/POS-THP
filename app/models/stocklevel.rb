class Stocklevel < ApplicationRecord
<<<<<<< HEAD
    # validates :location, :stockmaximum, :stocksecurity, :presence => true
    
=======

    #validates :location, :stockmaximum, :stocksecurity, :presence => true

>>>>>>> 36c54aaa529e87bd6d44b77f916a5d88f25e5d0e
    has_many :products
end
