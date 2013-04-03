class HsAgenda < ActiveRecord::Base
  attr_accessible :day, :end_time, :hs_doctor_id, :start_time
end
