class CreateMemorySales < ActiveRecord::Migration[5.2]
  def change
    create_table :memory_sales do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
