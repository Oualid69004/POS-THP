class Company < ApplicationRecord


    # validates :name, :address, :mobile, :presence => true

    belongs_to :businessline
    has_many :branches
    has_many :customers
    has_many :suppliers
    has_many :tickets
    #has_many :roles
    has_many :users
    has_many :company_categories
    has_many :categories, through: :company_categories
    belongs_to :stockcurrent, optional: true

end
