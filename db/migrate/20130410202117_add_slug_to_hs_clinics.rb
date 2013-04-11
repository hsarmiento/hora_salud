class AddSlugToHsClinics < ActiveRecord::Migration
  def change
    add_column :hs_clinics, :slug, :string
    add_index :hs_clinics, :slug
  end
end
