# == Schema Information
#
# Table name: hs_states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HsStateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
