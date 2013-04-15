# == Schema Information
#
# Table name: hs_blogs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :text
#  abstract   :text
#  tags       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  has_avatar :integer
#  slug       :string(255)
#  image      :string(255)
#

require 'test_helper'

class HsBlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
