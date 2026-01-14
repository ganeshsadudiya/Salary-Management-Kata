class EmployeesController < ApplicationController
  def create
    employee = Employee.create!(employee_params)
    render json: employee, status: :created
  end

  def show
    render json: employee
  end

  def update
    employee.update!(employee_params)
    render json: employee
  end

  def destroy
    employee.destroy
    head :no_content
  end

  def salary
    gross = employee.salary
    tds =
      case employee.country
      when 'India' then gross * 0.10
      when 'United States' then gross * 0.12
      else 0
      end
    net   = gross - tds

    render json: {
      gross_salary: gross.to_f,
      tds: tds.to_f,
      net_salary: net.to_f
    }
  end

  private

  def employee
    @employee ||= Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:full_name, :job_title, :country, :salary)
  end
end
