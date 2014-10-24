class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :startdate
      t.date :enddate
      t.integer :attendees

      t.timestamps null: false
    end
  end
end
