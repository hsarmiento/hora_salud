class CreateHsBlogs < ActiveRecord::Migration
  def change
    create_table :hs_blogs do |t|
      t.string :title
      t.string :text
      t.string :abstract
      t.string :tags

      t.timestamps
    end
  end
end
