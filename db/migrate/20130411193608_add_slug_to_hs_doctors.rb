class AddSlugToHsDoctors < ActiveRecord::Migration
  def change
    add_column :hs_doctors, :slug, :string
    add_index :hs_doctors, :slug
  end
end
