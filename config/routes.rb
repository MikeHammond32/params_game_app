Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/namegame_url" => "userparam#namegame"
    get "/guessgame_url" => "userparam#guessgame"
  end
end
