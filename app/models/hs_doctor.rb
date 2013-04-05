class HsDoctor < ActiveRecord::Base
  attr_accessible :has_avatar, :hs_account_id, :last_names, :names, :rut, :specialty, :hs_clinic_id
  belongs_to :hs_clinic
  has_many :hs_subspecialties

  def self.search(like,state,township)
  	like_condition = "%" + like + "%"
  	if township!=""
  		joins(:hs_clinic).where("(hs_doctors.names ILIKE ? OR hs_doctors.specialty ILIKE ? OR hs_doctors.last_names ILIKE ? OR hs_doctors.names ||' '|| hs_doctors.last_names ILIKE ?) AND (hs_clinics.hs_state_id = ? AND hs_clinics.township = ?)", like_condition, like_condition, like_condition, like_condition, state, township)
  	else
		  joins(:hs_clinic).where("(hs_doctors.names ILIKE ? OR hs_doctors.specialty ILIKE ? OR hs_doctors.last_names ILIKE ? OR hs_doctors.names ||' '|| hs_doctors.last_names ILIKE ?) AND (hs_clinics.hs_state_id = ?)", like_condition, like_condition, like_condition, like_condition, state)
  	end  
  	#find(:all, conditions: ['name LIKE ? OR specialty LIKE ? OR last_name LIKE ?', search_condition, search_condition, search_condition])
  end
end
