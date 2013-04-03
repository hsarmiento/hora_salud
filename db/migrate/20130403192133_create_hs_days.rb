class CreateHsDays < ActiveRecord::Migration
  def change
    create_table :hs_days do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
