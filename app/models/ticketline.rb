class Ticketline < ApplicationRecord
  has_many :products
  belongs_to :ticket
end
