class CreateStockcurrents < ActiveRecord::Migration[5.2]
  def change
    create_table :stockcurrents do |t|
      t.string :idstockcurrent
      t.float :cost
      t.float :total
      t.float :units
      t.belongs_to :branch, index: true 

      t.timestamps
    end
  end
end
