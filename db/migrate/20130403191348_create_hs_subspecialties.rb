class CreateHsSubspecialties < ActiveRecord::Migration
  def change
    create_table :hs_subspecialties do |t|
      t.integer :hs_doctor_id
      t.string :area
      t.string :description

      t.timestamps
    end
  end
end
