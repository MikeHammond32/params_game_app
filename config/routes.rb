Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/namegame_url" => "userparam#namegame"
    get "/guessgame_url" => "userparam#guessgame"


    get "/segment_parameter_url/:user_input" => "userparam#seg_method"

    post "/body_parameter_url" => "userparam#body_parameter_action"
  end
end
