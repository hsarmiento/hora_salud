class HsAccount < ActiveRecord::Base
  attr_accessible :account_type, :email, :password
end
