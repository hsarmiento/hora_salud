# == Schema Information
#
# Table name: hs_subspecialties
#
#  id           :integer          not null, primary key
#  hs_doctor_id :integer
#  area         :string(255)
#  description  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class HsSubspecialtyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
