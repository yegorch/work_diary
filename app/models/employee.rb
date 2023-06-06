class Employee < ApplicationRecord
  has_many :weeks

  def working_days_in_week(week)
    week.days.count
  end

  def working_days_in_month(month)
    weeks = self.weeks.where(month: month)
    weeks.sum { |week| week.days.count }
  end
end
