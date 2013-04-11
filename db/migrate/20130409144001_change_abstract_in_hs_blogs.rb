class ChangeAbstractInHsBlogs < ActiveRecord::Migration
  def up
  	change_column :hs_blogs, :abstract, :text
  end

  def down
  	change_column :hs_blogs, :abstract, :string
  end
end
