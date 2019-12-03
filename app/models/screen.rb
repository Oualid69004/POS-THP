class Screen < ApplicationRecord
    has_many :rolepermissions 
    has_many :roles, through: :rolepermissions
end
