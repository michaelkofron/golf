Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/test", to: "application#test"

  post "/signin", to: "users#sign_in"


  #courses
  post "/createcourse", to: "courses#create"

  #round
  post "/createround", to: "rounds#create"

  #holes
  post "/createhole", to: "holes#create"

  #tees
  post "/createtee", to: "tees#create"

  

end
