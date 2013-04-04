class HsTownship < ActiveRecord::Base
  attr_accessible :hs_state_id, :name
  belongs_to :hs_state
end
