class ChangeColumnPasswordName < ActiveRecord::Migration
  def up
  	rename_column :hs_accounts, :password, :password_digest
  end

  def down
  	rename_column :hs_accounts, :password_digest, :password
  end
end
