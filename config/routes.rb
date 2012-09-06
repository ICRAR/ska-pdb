Gaia::Application.routes.draw do

  devise_for :user, :path_prefix => 'my'

  resources :accounts

  resources :line_items

  resources :carts

  resources :proposals

  root :to => "parameters#index"
  resources :parameters do
    collection do
      get 'search'
    end
  end

  match '/export' => 'parameters#export'
  match '/new_proposals' => 'proposals#new_proposals'
  match '/my_proposals' => 'proposals#for_logged_in_user'

end
