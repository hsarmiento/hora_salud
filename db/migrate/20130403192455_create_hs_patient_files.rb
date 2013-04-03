class CreateHsPatientFiles < ActiveRecord::Migration
  def change
    create_table :hs_patient_files do |t|
      t.integer :hs_doctor_id
      t.integer :hs_user_id
      t.string :symptom
      t.string :treatment
      t.string :indication
      t.string :comment

      t.timestamps
    end
  end
end
