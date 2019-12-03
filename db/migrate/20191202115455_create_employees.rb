class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :apppassword
      t.string :address
      t.string :email
      t.string :image
      t.belongs_to :company, index: true
      t.belongs_to :role, index: true 
      t.belongs_to :ticket, index: true 
      

      
      t.timestamps
    end
  end
end
