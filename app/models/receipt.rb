class Receipt < ApplicationRecord
    belongs_to :ticket
    has_many :payments
end
