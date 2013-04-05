class HsClinic < ActiveRecord::Base
  attr_accessible :address, :country, :email, :hs_account_id, :hs_state_id, :lat, :lng, :name, :phone, :township
  has_many :hs_doctors
end
