class HsState < ActiveRecord::Base
  attr_accessible :name, :order
  has_many :hs_townships
end
