Rails.application.routes.draw do
  devise_for :end_users
	resources :places
	resources :songs
	resources :poems
	resources :composers

	get '/index', to: 'poems#index'
	get '/index', to: 'songs#index'
	get '/index', to: 'places#index'
	get '/index', to: 'composers#index'
	
	get '/home', to: 'ballad#home'
	get '/about', to: 'ballad#about'
	get '/contact', to: 'ballad#contact'
	get '/signup', to: 'ballad#signup'

	root to: 'ballad#home'

	
	
end
