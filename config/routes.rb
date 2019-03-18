Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/books' => 'books#index'
    get '/books/:id' => 'books#show'
    post '/books' => 'books#create'
    patch '/books/:id' => 'books#update'
    delete '/books/:id' => 'books#destroy'

    get '/authors' => 'authors#index'
    get '/authors/:id' => 'authors#show'
    post '/authors' => 'authors#create'
    patch '/authors/:id' => 'authors#update'
    delete '/authors/:id' => 'authors#destroy'
  end
end
