require 'rails_helper'

RSpec.describe Employee, type: :model do
  it "is invalid without full_name" do
    employee = Employee.new(job_title: "Engineer", country: "India", salary: 50000)
    expect(employee).not_to be_valid
  end
  it "is invalid without job_title" do
    employee = Employee.new(full_name: "Ganesh", country: "India", salary: 50000)
    expect(employee).not_to be_valid
  end
end