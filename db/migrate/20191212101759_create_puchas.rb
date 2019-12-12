class CreatePuchas < ActiveRecord::Migration[5.2]
  def change
    create_table :puchase do |t|
      t.integer :product_id
      t.date :purchased_on
      t.float :purchased_price
      t.timestamps
    end
    
  end
end
