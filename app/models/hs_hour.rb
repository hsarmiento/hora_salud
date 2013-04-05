# == Schema Information
#
# Table name: hs_hours
#
#  id         :integer          not null, primary key
#  hour       :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HsHour < ActiveRecord::Base
  attr_accessible :hour
end
