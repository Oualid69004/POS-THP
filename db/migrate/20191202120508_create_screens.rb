class CreateScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :screens do |t|
      t.string :name
      t.string :url
      t.string :parant
      t.string :isrout

      t.timestamps
    end
  end
end
