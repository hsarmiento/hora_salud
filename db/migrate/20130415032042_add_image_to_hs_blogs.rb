class AddImageToHsBlogs < ActiveRecord::Migration
  def change
    add_column :hs_blogs, :image, :string
  end
end
