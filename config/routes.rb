Threesquare::Application.routes.draw do
  root 'locations#show_all'
  get '/locations' => 'locations#show_all'
  get '/locations/new' => 'locations#new', as: 'new_location'
  get '/locations/:id' => 'locations#show', as: 'location'
  get '/locations/:id/edit' => 'locations#edit', as: 'edit_location'
  post '/locations' => 'locations#create'
  put '/locations/:id/' => 'locations#update'
  patch '/locations/:id' => 'locations#update'
  delete '/videos/:id' => 'locations#destroy'

end
