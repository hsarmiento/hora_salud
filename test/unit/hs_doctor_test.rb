# == Schema Information
#
# Table name: hs_doctors
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  names         :string(255)
#  last_names    :string(255)
#  rut           :string(255)
#  specialty     :string(255)
#  has_avatar    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  hs_clinic_id  :integer
#  slug          :string(255)
#

require 'test_helper'

class HsDoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
