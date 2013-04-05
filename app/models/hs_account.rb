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

class HsAccount < ActiveRecord::Base
  attr_accessible :account_type, :email, :password, :password_confirmation
  
  has_secure_password

  before_save { |hs_acccount| hs_acccount.email = email.downcase }
  before_save :create_remember_token

  #validaciones
  validates :account_type, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  private
  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end
end
