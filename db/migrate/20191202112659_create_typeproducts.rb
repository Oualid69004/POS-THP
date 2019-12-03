class CreateTypeproducts < ActiveRecord::Migration[5.2]
  def change
    create_table :typeproducts do |t|
      t.string :line
      t.belongs_to :product, index: true 
      
      t.timestamps
    end
  end
end
