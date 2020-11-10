Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'weather#show'
      get '/trails', to: 'trails#show'
      get '/backgrounds', to: 'image#show'
      post '/users', to: 'users#create'
    end
  end
end
