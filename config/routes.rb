Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/test", to: "application#test"

  post "/signin", to: "users#sign_in"


  #courses
  post "/createcourse", to: "courses#create"
  get "/getcourses", to: "courses#get"
  get "/getspecific/:id", to: "courses#get_specific"

  #round
  post "/createround", to: "rounds#create"

  #shot
  post "/createshot", to: "shots#create"

  #holes
  post "/createhole", to: "holes#create"
  get "/getinfo/:courseId/:holeNumber/:teeName", to: "holes#info"

  #tees
  post "/createtee", to: "tees#create"

  

end
