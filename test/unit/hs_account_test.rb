# == Schema Information
#
# Table name: hs_accounts
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  account_type    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#

require 'test_helper'

class HsAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
