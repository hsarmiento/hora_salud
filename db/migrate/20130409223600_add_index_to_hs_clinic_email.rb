class AddIndexToHsClinicEmail < ActiveRecord::Migration
  def change
  	add_index :hs_clinics, :email, unique: true
  end
end
