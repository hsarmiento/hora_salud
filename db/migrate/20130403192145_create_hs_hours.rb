class CreateHsHours < ActiveRecord::Migration
  def change
    create_table :hs_hours do |t|
      t.time :hour

      t.timestamps
    end
  end
end
