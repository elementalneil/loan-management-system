class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.integer :age
      t.string :occupation
      t.string :phone_number
      t.integer :amount
      t.string :purpose
      t.integer :duration

      t.timestamps
    end
  end
end
