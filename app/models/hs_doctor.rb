class HsDoctor < ActiveRecord::Base
  attr_accessible :has_avatar, :hs_account_id, :last_names, :names, :rut, :specialty, :hs_clinic_id
  belongs_to :hs_clinic
  has_many :hs_subspecialties
end
