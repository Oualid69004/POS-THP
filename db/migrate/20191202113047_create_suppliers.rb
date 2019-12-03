class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :adress
      t.string :email
      t.string :mobile
      t.belongs_to :company, index: true
      t.belongs_to :stockin, index: true
      t.belongs_to :paymentsupplier, index: true
      t.timestamps
    end
  end
end
