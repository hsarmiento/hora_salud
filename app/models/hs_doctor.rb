class HsDoctor < ActiveRecord::Base
  attr_accessible :has_avatar, :hs_account_id, :last_names, :names, :rut, :specialty
end
