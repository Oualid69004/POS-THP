class Supplier < ApplicationRecord
    belongs_to :company
    belongs_to :stockin
    belongs_to :paymentsupplier
end
