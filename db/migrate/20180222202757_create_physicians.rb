class CreatePhysicians < ActiveRecord::Migration[5.1]
  def change
    create_table :physicians do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :phone_number
      t.string :expertise_area

      t.timestamps
    end
  end
end
