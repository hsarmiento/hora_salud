class HsPatientFile < ActiveRecord::Base
  attr_accessible :comment, :hs_doctor_id, :hs_user_id, :indication, :symptom, :treatment
end
