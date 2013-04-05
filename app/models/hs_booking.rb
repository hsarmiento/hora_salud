# == Schema Information
#
# Table name: hs_bookings
#
#  id           :integer          not null, primary key
#  hs_agenda_id :integer
#  hs_user_id   :integer
#  hs_day_id    :integer
#  hs_hour_id   :integer
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HsBooking < ActiveRecord::Base
  attr_accessible :hs_agenda_id, :hs_day_id, :hs_hour_id, :hs_user_id, :status
end
