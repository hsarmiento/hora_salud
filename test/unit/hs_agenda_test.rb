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

require 'test_helper'

class HsAgendaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
