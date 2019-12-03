class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :discountPer
      t.string :discountVal
      t.string :payment
      t.float :total
      t.string :transid
      t.belongs_to :receipt
      t.timestamps
    end
  end
end
