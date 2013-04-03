class HsBooking < ActiveRecord::Base
  attr_accessible :hs_agenda_id, :hs_day_id, :hs_hour_id, :hs_user_id, :status
end
