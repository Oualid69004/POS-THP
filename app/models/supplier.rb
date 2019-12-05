class Supplier < ApplicationRecord
    belongs_to :company, optional: true
    belongs_to :stockin, optional: true
    belongs_to :paymentsupplier, optional: true
end
