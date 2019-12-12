class Stockin < ApplicationRecord
  #  validates :total, :presence => true

    has_many :suppliers
    
end
