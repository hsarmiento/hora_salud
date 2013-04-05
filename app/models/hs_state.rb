# == Schema Information
#
# Table name: hs_states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HsState < ActiveRecord::Base
  attr_accessible :name, :order
end
