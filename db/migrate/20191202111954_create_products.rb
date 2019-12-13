class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :pricesell
      t.float :pricebuy
      t.integer :stockvolume, default: 1
      t.string :reference
      t.float :stockcost

      t.belongs_to :category, index: true
      t.belongs_to :stockcurrent, index: true
      t.belongs_to :stocklevel, index: true
      t.belongs_to :ticketline, index: true




      t.timestamps
    end
  end
end
