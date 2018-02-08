Rails.application.routes.draw do

	root   'static_pages#home'

  # get 'ingredients/index'
  #
  # get 'ingredients/create'
  #
  # get 'ingredients/update'
  #
  # get 'ingredients/edit'
  #
  # get 'ingredients/destroy'
  #
  # get 'ingredients/show'

  get 'product_formulas/index'

  get 'product_formulas/create'

  get 'product_formulas/update'

  get 'product_formulas/edit'

  get 'product_formulas/destroy'

  get 'product_formulas/show'

  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
	resources :password_resets,     only: [:new, :create, :edit, :update]
	resources :formula_profiles, only: [:new, :create, :edit, :update, :index]
	resources :ingredients, only: [:new, :create, :edit, :update, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	# index, show, new, create, edit, update, and destroy
end
