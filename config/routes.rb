Rails.application.routes.draw do
root 'ballad#home'

get '/home', to: 'ballad#signup'
get '/about', to: 'ballad#signup'
get '/contact', to: 'ballad#signup'
get '/signup', to: 'ballad#signup'
end
