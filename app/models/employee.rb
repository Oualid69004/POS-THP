class Employee < ApplicationRecord
    belongs_to :company
    #has_many :employeebranches
    belongs_to :role
    belongs_to :ticket

end
