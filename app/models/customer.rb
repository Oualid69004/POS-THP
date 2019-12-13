class Customer < ApplicationRecord


    # validates :first_name, :last_name, :adress, :mobile :presence => true
    # validates :email, :confirmation => true, :uniqueness => true



    belongs_to :company,optional: true
    belongs_to :ticket,optional: true
end
