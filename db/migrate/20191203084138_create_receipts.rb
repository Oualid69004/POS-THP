class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.string :reference_receipt
      t.float :value, default: 0
      t.belongs_to :company
      t.timestamps
    end
  end
end
