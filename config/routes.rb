Rails.application.routes.draw do
  post "/employees", to: "employees#create"
  get "/employees/:id", to: "employees#show"
end
