Rails.application.routes.draw do
  get '/contact', to: "pages#contact"
  get '/about', to: "pages#about"
  # ROOT IS A HELPER, EQUIVALENT TO get '/home', to: "pages#home"
  root to: "pages#home"

  get '/restaurants', to: "restaurants#index"
  # NO NEED TO SPECIFY THE PREFIX (AS: :RESTAURANTS)
  post '/restaurants', to: "restaurants#create"
  get '/restaurants/:id', to: "restaurants#show", as: :restaurant
end
