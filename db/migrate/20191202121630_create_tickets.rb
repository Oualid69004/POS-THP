class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :discount
      t.integer :status
      t.string :ticketCost
      t.date :ticketDate
      t.string :ticketNumber
      t.float :ticketTotal
      t.string :ticketid
      t.string :tickettype
      t.belongs_to :company, index: true
      t.belongs_to :receipt, index: true
      t.timestamps
    end
  end
end
