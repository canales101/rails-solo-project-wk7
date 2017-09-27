Rails.application.routes.draw do
  root 'cars#index'
  get '/bmw' => "cars#bmw"
  get '/mercedes' => "cars#mercedes"
  get '/audi' => "cars#audi"



resources :cars
end
