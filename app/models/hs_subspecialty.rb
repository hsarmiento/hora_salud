# == Schema Information
#
# Table name: hs_subspecialties
#
#  id           :integer          not null, primary key
#  hs_doctor_id :integer
#  area         :string(255)
#  description  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HsSubspecialty < ActiveRecord::Base
  attr_accessible :area, :description, :hs_doctor_id
  belongs_to :hs_doctor
end
