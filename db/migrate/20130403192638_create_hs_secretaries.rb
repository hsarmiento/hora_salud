class CreateHsSecretaries < ActiveRecord::Migration
  def change
    create_table :hs_secretaries do |t|
      t.integer :hs_account_id
      t.string :names
      t.string :last_names

      t.timestamps
    end
  end
end
