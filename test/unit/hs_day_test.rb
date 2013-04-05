# == Schema Information
#
# Table name: hs_days
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HsDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
