Rails.application.routes.draw do
  devise_for :admins
  devise_for :end_users
	resources :places
	resources :songs
	resources :poems
	resources :composers
	resources :end_users

	get '/index', to: 'poems#index'
	get '/index', to: 'songs#index'
	get '/index', to: 'places#index'
	get '/index', to: 'composers#index'
	get '/index', to: 'end_users#index'
	
	get '/home', to: 'application#home'
	get '/about', to: 'application#about'
	get '/contact', to: 'application#contact'
	get '/signup', to: 'application#signup'

	root to: 'application#home'

	
	
end
