class ChangeTextInHsBlogs < ActiveRecord::Migration
  def up
  	change_column :hs_blogs, :text, :text
  end

  def down
  	change_column :hs_blogs, :text, :string
  end
end
