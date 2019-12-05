class Memory < ApplicationRecord
  has_many :ticketlines
  has_many :products, through: :ticketlines
  belongs_to :user, optional: true
end
