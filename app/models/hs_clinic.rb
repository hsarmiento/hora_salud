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

class HsClinic < ActiveRecord::Base

  attr_accessible :address, :country, :email, :hs_account_id, :hs_state_id, :lat, :lng, :name, :phone, :township, :hs_doctors_attributes
  has_many :hs_doctors
  accepts_nested_attributes_for :hs_doctors

  before_save { |hs_clinic| hs_clinic.email = email.downcase }

  #no mostrar el id en la url
  extend FriendlyId
  friendly_id :name, use: :slugged

  #validaciones
  validates :name, presence: true, length: { minimum: 7}
  validates :address, presence: true
  validates :country, presence: true
  validates :hs_state_id, presence: true
  validates :township, presence: true
  validates :phone, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :lat, presence: true
  validates :lng, presence: true
end
