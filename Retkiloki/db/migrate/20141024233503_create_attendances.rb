class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.date :startdate
      t.date :enddate

      t.timestamps null: false
    end
  end
end
