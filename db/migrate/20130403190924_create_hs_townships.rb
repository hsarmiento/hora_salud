class CreateHsTownships < ActiveRecord::Migration
  def change
    create_table :hs_townships do |t|
      t.integer :hs_state_id
      t.string :name

      t.timestamps
    end
  end
end
