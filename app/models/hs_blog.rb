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

class HsBlog < ActiveRecord::Base
  attr_accessible :abstract, :tags, :text, :title
end
