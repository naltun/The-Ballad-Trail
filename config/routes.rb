Rails.application.routes.draw do
	resources :places
	resources :songs

	get '/index', to: 'songs#index'
	get '/index', to: 'places#index'
	
	get '/home', to: 'ballad#home'
	get '/about', to: 'ballad#about'
	get '/contact', to: 'ballad#contact'
	get '/signup', to: 'ballad#signup'

	root to: 'ballad#home'

	
	
end
