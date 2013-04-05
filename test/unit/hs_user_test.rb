# == Schema Information
#
# Table name: hs_users
#
#  id               :integer          not null, primary key
#  hs_account_id    :integer
#  names            :string(255)
#  last_name        :string(255)
#  rut              :string(255)
#  phone            :string(255)
#  health_ensurance :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class HsUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
