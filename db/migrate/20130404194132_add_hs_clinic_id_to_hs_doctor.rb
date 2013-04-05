class AddHsClinicIdToHsDoctor < ActiveRecord::Migration
  def change
    add_column :hs_doctors, :hs_clinic_id, :integer
  end
end
