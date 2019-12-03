class CreateStockins < ActiveRecord::Migration[5.2]
  def change
    create_table :stockins do |t|
      t.float :total

      t.timestamps
    end
  end
end
