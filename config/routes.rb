Gaia::Application.routes.draw do

  devise_for :user, :path_prefix => 'my'

  resources :accounts

  resources :line_items

  resources :carts

  root :to => "parameters#index"
  resources :parameters do
    collection do
      get 'search'
    end
  end
    
end
