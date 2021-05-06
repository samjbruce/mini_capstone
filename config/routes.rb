Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_products", controller: "products", action: "all_products"
  get "/reaver", controller: "products", action: "reaver"
  get "/pipeline", controller: "products", action: "pipeline"
  get "/aquos", controller: "products", action: "aquos"
end
