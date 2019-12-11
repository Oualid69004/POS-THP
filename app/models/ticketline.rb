class Ticketline < ApplicationRecord
  belongs_to :product
  belongs_to :ticket, optional: true
  belongs_to :memory, optional: true
  belongs_to :memory_sale, optional: true
end
