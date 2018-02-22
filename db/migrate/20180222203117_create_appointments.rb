class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.date :date
      t.string :location
      t.integer :patient_id
      t.integer :physician_id

      t.timestamps
    end
  end
end
