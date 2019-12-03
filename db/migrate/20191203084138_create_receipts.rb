class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.string :reference_receipt
      t.belongs_to :ticket, index: true
      t.timestamps
    end
  end
end
