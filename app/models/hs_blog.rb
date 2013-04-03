class HsBlog < ActiveRecord::Base
  attr_accessible :abstract, :tags, :text, :title
end
