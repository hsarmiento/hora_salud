# == Schema Information
#
# Table name: hs_clinics
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  name          :string(255)
#  address       :string(255)
#  country       :string(255)
#  hs_state_id   :integer
#  township      :string(255)
#  phone         :string(255)
#  email         :string(255)
#  lat           :float
#  lng           :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class HsClinic < ActiveRecord::Base
  attr_accessible :address, :country, :email, :hs_account_id, :hs_state_id, :lat, :lng, :name, :phone, :township
  has_many :hs_doctors
end
