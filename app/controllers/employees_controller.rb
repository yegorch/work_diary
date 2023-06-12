class EmployeesController < ApplicationController
  def index
    @employee = Employee.last
  end
end
