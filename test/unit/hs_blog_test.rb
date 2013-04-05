# == Schema Information
#
# Table name: hs_blogs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :string(255)
#  abstract   :string(255)
#  tags       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HsBlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
