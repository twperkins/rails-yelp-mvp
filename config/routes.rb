Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :create, :new]
  resources :restaurants do
    resources :reviews, only: [:create, :new]
  end
end
