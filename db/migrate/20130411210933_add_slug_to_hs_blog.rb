class AddSlugToHsBlog < ActiveRecord::Migration
  def change
    add_column :hs_blogs, :slug, :string
    add_index :hs_blogs, :slug
  end
end
