class AddMonthToWeek < ActiveRecord::Migration[7.0]
  def change
    add_column :weeks, :month_year, :integer
  end
end
