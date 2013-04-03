class CreateHsClinics < ActiveRecord::Migration
  def change
    create_table :hs_clinics do |t|
      t.integer :hs_account_id
      t.string :name
      t.string :address
      t.string :country
      t.integer :hs_state_id
      t.string :township
      t.string :phone
      t.string :email
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
