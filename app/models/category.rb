class Category < ApplicationRecord

    # validates :name, :presence => true



    has_many :products
    has_many :company_categories
    has_many :companies, through: :company_categories
end
