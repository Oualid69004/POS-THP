class Branch < ApplicationRecord
    belongs_to :company
    #has_many :closedcashes
    #has_many :employeebranches
    #has_many :stockcurrents
    #has_many :tickets
    has_many :closedcashes
end
