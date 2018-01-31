class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :patient_first_name
      t.string :patient_second_name
      t.string :patient_email_address
      t.integer :patient_phone_number, limit: 8
      t.text :patient_situation
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
