class AddIndexToHsAccountEmail < ActiveRecord::Migration
  def change
  	add_index :hs_accounts, :email, unique: true
  end
end
