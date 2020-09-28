Rails.application.routes.draw do
  resources :circle_canvases
  resources :background_canvases
  resources :scribbles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
