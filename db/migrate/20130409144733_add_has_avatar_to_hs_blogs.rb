class AddHasAvatarToHsBlogs < ActiveRecord::Migration
  def change
    add_column :hs_blogs, :has_avatar, :integer
  end
end
