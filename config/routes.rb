Gaia::Application.routes.draw do
  resources :line_items

  resources :carts

  root :to => "parameters#index"
  resources :parameters do
    collection do
      get 'search'
    end
  end
    
end
