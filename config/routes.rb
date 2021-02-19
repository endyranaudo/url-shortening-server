Rails.application.routes.draw do
  resources :urls, only: [:index]
  get '/urls' => 'urls#index'
end
