# == Schema Information
#
# Table name: hs_agendas
#
#  id           :integer          not null, primary key
#  hs_doctor_id :integer
#  day          :string(255)
#  start_time   :time
#  end_time     :time
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HsAgenda < ActiveRecord::Base
  attr_accessible :day, :end_time, :hs_doctor_id, :start_time
end
