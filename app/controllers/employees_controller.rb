class EmployeesController < ApplicationController
  def create
    employee = Employee.create!(employee_params)
    render json: employee, status: :created
  end

  def show
    employee = Employee.find(params[:id])
    render json: employee
  end


  private

  def employee_params
    params.require(:employee).permit(:full_name, :job_title, :country, :salary)
  end
end
