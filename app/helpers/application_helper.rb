module ApplicationHelper
  def get_month(month)
    if month == 5
      'Июнь'
    end
  end

  def get_day_of_week(day)
    if day == 1
      'Понедельник'
    end
  end
end
