# == Schema Information
#
# Table name: hs_doctors
#
#  id            :integer          not null, primary key
#  hs_account_id :integer
#  names         :string(255)
#  last_names    :string(255)
#  rut           :string(255)
#  specialty     :string(255)
#  has_avatar    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  hs_clinic_id  :integer
#  slug          :string(255)
#

class HsDoctor < ActiveRecord::Base
  attr_accessible :has_avatar, :hs_account_id, :last_names, :names, :rut, :specialty, :hs_clinic_id
  belongs_to :hs_clinic
  has_many :hs_subspecialties

  #no mostrar el id en la url
  extend FriendlyId
  friendly_id :names, use: :slugged

  #validaciones
  validates :names, presence: true, length: { minimum: 4}
  validates :last_names, presence: true, length: { minimum: 4}
  validates :rut, presence: true, length: { minimum: 8 }
  validates :specialty, presence: true
  validates :has_avatar, presence: true
  validates :hs_clinic_id, presence: true

  def self.search(like,state,township,specialty)
  	like_condition = "%" + like + "%"
    if like =="" and township == ""
      joins(:hs_clinic).where("(hs_doctors.specialty ILIKE ?) AND (hs_clinics.hs_state_id = ?)", specialty, state)
  	elsif like == "" and township != ""
      joins(:hs_clinic).where("(hs_doctors.specialty ILIKE ?) AND (hs_clinics.hs_state_id = ? AND hs_clinics.township = ?)", specialty, state, township)
    elsif township!=""
  		joins(:hs_clinic).where("(hs_doctors.specialty ILIKE ?) AND (hs_doctors.names ILIKE ? OR hs_doctors.last_names ILIKE ? OR hs_doctors.names ||' '|| hs_doctors.last_names ILIKE ?) AND (hs_clinics.hs_state_id = ? AND hs_clinics.township = ?)", specialty, like_condition, like_condition, like_condition, state, township)
  	else
		  joins(:hs_clinic).where("(hs_doctors.specialty ILIKE ?) AND (hs_doctors.names ILIKE ? OR hs_doctors.last_names ILIKE ? OR hs_doctors.names ||' '|| hs_doctors.last_names ILIKE ?) AND (hs_clinics.hs_state_id = ?)", specialty, like_condition, like_condition, like_condition, state)
  	end  
  	#find(:all, conditions: ['name LIKE ? OR specialty LIKE ? OR last_name LIKE ?', search_condition, search_condition, search_condition])
  end
end
