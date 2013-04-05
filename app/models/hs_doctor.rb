# == Schema Information
#
# Table name: hs_doctors
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  names         :string(255)
#  last_names    :string(255)
#  rut           :string(255)
#  specialty     :string(255)
#  has_avatar    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  hs_clinic_id  :integer
#

class HsDoctor < ActiveRecord::Base
  attr_accessible :has_avatar, :hs_account_id, :last_names, :names, :rut, :specialty, :hs_clinic_id
  belongs_to :hs_clinic
  has_many :hs_subspecialties
end
