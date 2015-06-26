Rails.application.routes.draw do
root to: 'ballad#home'

get '/home', to: 'ballad#home'
get '/about', to: 'ballad#about'
get '/contact', to: 'ballad#contact'
get '/signup', to: 'ballad#signup'
end
