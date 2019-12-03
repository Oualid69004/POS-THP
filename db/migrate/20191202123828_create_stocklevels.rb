class CreateStocklevels < ActiveRecord::Migration[5.2]
  def change
    create_table :stocklevels do |t|
      t.string :location
      t.float :stockmaximum
      t.float :stocksecurity

      t.timestamps
    end
  end
end
