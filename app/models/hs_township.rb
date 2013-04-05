# == Schema Information
#
# Table name: hs_townships
#
#  id          :integer          not null, primary key
#  hs_state_id :integer
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class HsTownship < ActiveRecord::Base
  attr_accessible :hs_state_id, :name
end
