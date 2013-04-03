class CreateHsStates < ActiveRecord::Migration
  def change
    create_table :hs_states do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
