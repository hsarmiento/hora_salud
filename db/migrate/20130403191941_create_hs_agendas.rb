class CreateHsAgendas < ActiveRecord::Migration
  def change
    create_table :hs_agendas do |t|
      t.integer :hs_doctor_id
      t.string :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
