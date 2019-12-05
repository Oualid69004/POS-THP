class CreateTicketlines < ActiveRecord::Migration[5.2]
  def change
    create_table :ticketlines do |t|
      t.string :reference_ticket
      t.string :line
      t.float :price
      t.string :taxid
      t.float :unitCost
      t.float :units
      t.float :unitsRefund
      t.belongs_to :product, index: true
      t.belongs_to :ticket, index: true
      t.belongs_to :memory, index: true

      t.timestamps
    end
  end
end
