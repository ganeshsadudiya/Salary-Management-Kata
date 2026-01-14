require 'rails_helper'

RSpec.describe "Employees API", type: :request do
  describe "POST /employees" do
    it "returns 201 when employee is created" do
      post "/employees", params: {
        employee: {
          full_name: "Ganesh Sadudiya",
          job_title: "Backend Engineer",
          country: "India",
          salary: 50000
        }
      }

      expect(response).to have_http_status(:created)
    end
  end
  describe "GET /employees/:id" do
    it "returns employee details" do
      employee = Employee.create!(
        full_name: "Ganesh",
        job_title: "Engineer",
        country: "India",
        salary: 50000
      )

      get "/employees/#{employee.id}"

      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)["id"]).to eq(employee.id)
    end
  end
  describe "PUT /employees/:id" do
    it "updates an existing employee" do
      employee = Employee.create!(
        full_name: "Ganesh",
        job_title: "Developer",
        country: "India",
        salary: 40000
      )

      put "/employees/#{employee.id}", params: {
        employee: { job_title: "Senior Developer"}
      }

      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)["job_title"]).to eq("Senior Developer")
    end
  end

end
