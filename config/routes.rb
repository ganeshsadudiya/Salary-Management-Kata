Rails.application.routes.draw do
  post "/employees", to: "employees#create"
end
