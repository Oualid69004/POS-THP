class Stocklevel < ApplicationRecord
    #validates :location, :stockmaximum, :stocksecurity, :presence => true

    has_many :products
end
