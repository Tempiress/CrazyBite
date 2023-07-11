Rails.application.routes.draw do

  get '/',to: 'questions#main'
  post '/questions', to: 'questions#create'
  patch 'questions/:id', to: 'questions#update', as: 'question'
  delete 'questions/:id', to: 'questions#destroy'
  get '/questions/:id/edit', to: 'questions#edit'
  get '/questions/new', to: 'questions#new'
  get 'questions/:id', to: 'questions#show'
  get '/questions', to: 'questions#index'

end
