Rails.application.routes.draw do
  
  #users routes
  get "users/", to: "users#index"
  get "users/:id", to: "users#show"
  post "users/", to: "users#create"

  #circle_canvases routes
  get "circle_canvases/", to: "circle_canvases#index"
  post "circle_canvases/", to: "circle_canvases#create"
  patch "circle_canvases/:id", to: "circle_canvases#update"
  delete "circle_canvases/:id", to: "circle_canvases#destroy"

  #scribbles routes
  get "scribbles/", to: "scribbles#index"
  get "scribbles/:id", to: "scribbles#show"
  post "scribbles/", to: "scribbles#create"
  delete "scribbles/:id", to: "scribbles#destroy"

  #background_canvases routes
  get "background_canvases/", to: "background_canvases#index"
  post "background_canvases/", to: "background_canvases#create"
  patch "background_canvases/:id", to: "background_canvases#update"

end
