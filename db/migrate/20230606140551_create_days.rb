class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.integer :week_id
      t.integer :day_of_week
      t.time :work_start
      t.time :work_end
      t.integer :break_duration

      t.timestamps
    end
  end
end
