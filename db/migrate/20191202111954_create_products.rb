class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :pricesell
      t.string :pricebuy
      t.float :stockvolume
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
