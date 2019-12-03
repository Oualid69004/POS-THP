class Role < ApplicationRecord
    #belongs_to :company
    has_many :users
    has_many :rolepermissions 
    has_many :screens, through: :rolepermissions
end
