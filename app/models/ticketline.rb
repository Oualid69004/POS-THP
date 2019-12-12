class Ticketline < ApplicationRecord

 # validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }


  belongs_to :product
  belongs_to :ticket, optional: true
  belongs_to :memory, optional: true
  belongs_to :memory_sale, optional: true
end
