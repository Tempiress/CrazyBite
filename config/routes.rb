Rails.application.routes.draw do

  post '/questions', to: 'questions#create'
  patch 'questions/:id', to: 'questions#update'
  delete 'questions/:id', to: 'questions#destroy'
  get 'questions/:id', to: 'questions#show'
end
