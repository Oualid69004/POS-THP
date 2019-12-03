class Customer < ApplicationRecord
    belongs_to :company
    belongs_to :ticket
end
