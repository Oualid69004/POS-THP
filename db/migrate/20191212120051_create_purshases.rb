class CreatePurshases < ActiveRecord::Migration[5.2]
  def change
    create_table :purshases do |t|
      t.integer :product_id
      t.date :purshased_on
      t.float :purshased_price
      t.timestamps
    end
  end
end
