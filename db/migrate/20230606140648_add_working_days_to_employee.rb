class AddWorkingDaysToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :working_days, :integer, array: true, default: []
    add_column :employees, :sick_days, :integer, array: true, default: []
    add_column :employees, :vacation_days, :integer, array: true, default: []
  end
end
