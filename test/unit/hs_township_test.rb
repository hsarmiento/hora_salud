# == Schema Information
#
# Table name: hs_townships
#
#  id          :integer          not null, primary key
#  hs_state_id :integer
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class HsTownshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
