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

require 'test_helper'

class HsBookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
