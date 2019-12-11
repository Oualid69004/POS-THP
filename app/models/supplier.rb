class Supplier < ApplicationRecord
    validates :name, :adress, :mobile, :presence => true
    validates :email, :confirmation => true, :uniqueness => true
    
    belongs_to :company, optional: true
    belongs_to :stockin, optional: true
    belongs_to :paymentsupplier, optional: true
end
