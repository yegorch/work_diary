class Employee < ApplicationRecord
  has_many :weeks

  def working_days_in_week(week)
    week.days.count
  end

  def working_days_in_month(month)
    weeks = self.weeks.where(month: month)
    weeks.sum { |week| week.days.count }
  end

  def weeks_in_month(month)
    start_date = Date.strptime(month, "%B %Y").beginning_of_month
    end_date = start_date.end_of_month
    (start_date..end_date).to_a.select { |d| d.wday == 1 }
  end

  def days_in_week(week_start)
    (week_start..week_start + 4.days).to_a
  end

  def working_hours_for_day(day)
    attendance = attendances.find_by(work_date: day)
    attendance&.total_work_hours || 0
  end
end
