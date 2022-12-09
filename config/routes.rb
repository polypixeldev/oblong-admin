Rails.application.routes.draw do
  get '/domains/:id', to: "domains#dns"
  get '/domains/:id/dns', to: redirect("/domains/%{id}")
  get '/domains/:id/email', to: "domains#email"
  get '/domains/:id/links', to: "domains#links"
  get '/domains/:id/settings', to: "domains#settings"
  get 'users/auth'
  get '/dashboard', to: "dashboard#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "dashboard#index"
end