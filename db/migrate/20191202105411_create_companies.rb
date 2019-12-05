class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :logo
      t.string :mobile
      t.belongs_to :businessline, index: true
      t.belongs_to :stockcurrent
      t.timestamps

    end
  end
end
