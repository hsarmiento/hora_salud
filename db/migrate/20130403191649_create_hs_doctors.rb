class CreateHsDoctors < ActiveRecord::Migration
  def change
    create_table :hs_doctors do |t|
      t.integer :hs_account_id
      t.string :names
      t.string :last_names
      t.string :rut
      t.string :specialty
      t.integer :has_avatar

      t.timestamps
    end
  end
end
