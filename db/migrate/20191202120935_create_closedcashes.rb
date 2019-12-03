class CreateClosedcashes < ActiveRecord::Migration[5.2]
  def change
    create_table :closedcashes do |t|
      t.string :money
      t.string :host
      t.string :hostsequence
      t.belongs_to :branch, index: true
      t.timestamps
    end
  end
end
