class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :adress
      t.string :email
      t.string :mobile
      t.belongs_to :company, index: true
      t.belongs_to :ticket, index: true
      t.timestamps
    end
  end
end
