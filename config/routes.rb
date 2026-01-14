Rails.application.routes.draw do
resources :employees, only: [:create, :show, :update]
end
