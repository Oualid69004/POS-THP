class CreateRolepermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :rolepermissions do |t|

      t.timestamps
      t.belongs_to :role, index: true 
      t.belongs_to :screen, index: true 
    end
  end
end
