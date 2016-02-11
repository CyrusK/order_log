Rails.application.routes.draw do
  resources :orders do  #creating a nested route so making it a block
    resources :deliveries
    end 
  root 'orders#index'
end
