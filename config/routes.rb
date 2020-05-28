Rails.application.routes.draw do

  root 'boards#index'

  resources :boards do
    resources :lists
  end

  resources :lists do 
    resources :tasks 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
