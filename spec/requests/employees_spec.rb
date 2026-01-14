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
end
