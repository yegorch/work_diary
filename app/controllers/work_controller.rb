class WorkController < ApplicationController
  def index
    @employees = Employee.all
  end
end
