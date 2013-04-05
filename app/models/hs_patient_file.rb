# == Schema Information
#
# Table name: hs_patient_files
#
#  id           :integer          not null, primary key
#  hs_doctor_id :integer
#  hs_user_id   :integer
#  symptom      :string(255)
#  treatment    :string(255)
#  indication   :string(255)
#  comment      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HsPatientFile < ActiveRecord::Base
  attr_accessible :comment, :hs_doctor_id, :hs_user_id, :indication, :symptom, :treatment
end
