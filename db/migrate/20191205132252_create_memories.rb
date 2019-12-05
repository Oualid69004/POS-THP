class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
