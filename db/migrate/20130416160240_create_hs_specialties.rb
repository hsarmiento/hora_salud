class CreateHsSpecialties < ActiveRecord::Migration
  def change
    create_table :hs_specialties do |t|
      t.string :name

      t.timestamps
    end
  end
end
