Rails.application.routes.draw do
  root to: 'top#index'
  resources :documents do
    get :deliver, on: :member
  end
end
