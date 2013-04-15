# == Schema Information
#
# Table name: hs_clinics
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  name          :string(255)
#  address       :string(255)
#  country       :string(255)
#  hs_state_id   :integer
#  township      :string(255)
#  phone         :string(255)
#  email         :string(255)
#  lat           :float
#  lng           :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string(255)
#

require 'test_helper'

class HsClinicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
