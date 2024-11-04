Rails.application.routes.draw do
  resources :events
  root 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
