class Stockcurrent < ApplicationRecord
    belongs_to :branch
    has_many :products

end
