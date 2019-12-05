class CreateCompanyCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :company_categories do |t|
      t.belongs_to :company
      t.belongs_to :category
      t.timestamps
    end
  end
end
