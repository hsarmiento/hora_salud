class AddRememberTokenToHsAccounts < ActiveRecord::Migration
  def change
  	add_column :hs_accounts, :remember_token, :string
  	add_index :hs_accounts, :remember_token
  end
end
