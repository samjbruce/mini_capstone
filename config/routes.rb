Rails.application.routes.draw do
  # Shows all products 
  get "/products" => "products#index"

  # Uses URL Segment Parameter to find one product by ID
  get "/products/:id" => "products#show"
end
