class CreateHsBookings < ActiveRecord::Migration
  def change
    create_table :hs_bookings do |t|
      t.integer :hs_agenda_id
      t.integer :hs_user_id
      t.integer :hs_day_id
      t.integer :hs_hour_id
      t.integer :status

      t.timestamps
    end
  end
end
