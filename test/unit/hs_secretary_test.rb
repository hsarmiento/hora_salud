# == Schema Information
#
# Table name: hs_secretaries
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  names         :string(255)
#  last_names    :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class HsSecretaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
