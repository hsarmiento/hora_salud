# == Schema Information
#
# Table name: hs_secretaries
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  names         :string(255)
#  last_names    :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class HsSecretary < ActiveRecord::Base
  attr_accessible :hs_account_id, :last_names, :names
end
