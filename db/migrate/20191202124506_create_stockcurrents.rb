class CreateStockcurrents < ActiveRecord::Migration[5.2]
  def change
    create_table :stockcurrents do |t|
      t.string :idstockcurrent
      t.float :cost
      t.float :total, default: 0
      t.float :units, default: 0
      t.integer :stockmin, default: 0
      t.integer :stockmax, default: 1000
      t.integer :critical_threshold, default: 20
      t.integer :warning_threshold, default: 50
      t.belongs_to :company, index: true

      t.timestamps
    end
  end
end
