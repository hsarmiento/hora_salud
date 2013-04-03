class CreateHsAccounts < ActiveRecord::Migration
  def change
    create_table :hs_accounts do |t|
      t.string :email
      t.string :password
      t.integer :account_type

      t.timestamps
    end
  end
end
