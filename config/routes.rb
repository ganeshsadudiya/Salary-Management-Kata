Rails.application.routes.draw do
  resources :employees, only: [:create, :show, :update, :destroy] do
    get :salary, on: :member
    get :salary_metrics, on: :collection
  end
end
