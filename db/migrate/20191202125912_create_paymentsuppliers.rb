class CreatePaymentsuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :paymentsuppliers do |t|
      t.string :paymentNote
      t.string :paymentValue

      t.timestamps
    end
  end
end
