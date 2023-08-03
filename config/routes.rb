Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'

  get '/',to: 'questions#main'
  get '/questions/new', to: 'questions#new'
  post '/questions', to: 'questions#create'
  patch 'questions/:id', to: 'questions#update', as: 'question'
  delete 'questions/:id', to: 'questions#destroy'
  get '/questions/:id/edit', to: 'questions#edit'
  get 'questions/:id', to: 'questions#show'
  get '/questions', to: 'questions#index'

  resource :session, only: %i[new create destroy]
  resources :users, only: %i[new create]


end
