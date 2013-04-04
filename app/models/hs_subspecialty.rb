class HsSubspecialty < ActiveRecord::Base
  attr_accessible :area, :description, :hs_doctor_id
  belongs_to :hs_doctor
end
