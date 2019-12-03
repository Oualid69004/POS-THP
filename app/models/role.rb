class Role < ApplicationRecord
    #belongs_to :company
    has_many :employees
    has_many :rolepermissions 
    has_many :screens, through: :rolepermissions
end
