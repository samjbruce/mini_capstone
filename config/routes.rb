Rails.application.routes.draw do
  # Shows all products 
  get "/products" => "products#index"

  # Creates a product using POST
  post "/products" => "products#create"

  # Uses URL Segment Parameter to find one product by ID
  get "/products/:id" => "products#show"

  # Updates a product using PATCH
  patch "/products/:id" => "products#update"

  # Deletes a product using DELETE
  delete "/products/:id" => "products#destroy"

end
