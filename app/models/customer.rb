class Customer < ApplicationRecord
    belongs_to :company,optional: true
    belongs_to :ticket,optional: true
end
