class CreateHsUsers < ActiveRecord::Migration
  def change
    create_table :hs_users do |t|
      t.integer :hs_account_id
      t.string :names
      t.string :last_name
      t.string :rut
      t.string :phone
      t.string :health_ensurance

      t.timestamps
    end
  end
end
