Rails.application.routes.draw do

  root to: "users#index"

  get "/users", to: "users#index", as: "users"

  get "/users/new", to: "users#new", as: "new_user"  

  get "/users/:id", to: "users#show", as: "user"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  post "users", to: "users#create"

  #the update routes
  patch "/user/:id", to: "users#update"

  delete "/users/:id", to: "users#destroy"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"


  #articles routes
  get "/articles", to: "articles#index", as: "articles"






  
end

  # get 'session_helper/login'

  # get 'session_helper/logged_in?'

  # get 'session_helper/logout'

  # get 'session_helper/current_user'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'articles/index'

  # get 'articles/new'

  # get 'articles/create'

  # get 'articles/show'

  # get 'articles/edit'

  # get 'articles/update'

  # get 'articles/destroy'

  # get 'users/index'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/update'

  # get 'users/destroy'

  # get 'sites/index'

  # get 'sites/about'

  # get 'sites/contact'
