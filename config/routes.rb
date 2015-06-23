Rails.application.routes.draw do
root 'ballad#home'

get '/signup', to: 'ballad#signup'
end
