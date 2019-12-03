class Company < ApplicationRecord
    belongs_to :businessline
    has_many :branches
    has_many :customers
    has_many :suppliers
    #has_many :roles
    has_many :users
end
