class Receipt < ApplicationRecord
    has_many :tickets
    has_many :payments
    belongs_to :company
end
