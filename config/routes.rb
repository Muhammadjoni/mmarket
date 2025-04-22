Rails.application.routes.draw do
  devise_for :users
  ########get "pages/home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "pages#home"
  get "store", to: "pages#store", as: :store
  get "about", to: "pages#about", as: :about

  # get "products", to: "products#index", as: :products
  # get "products/:id", to: "products#show", as: :product
  # get "products/new", to: "products#new",   as: :new_product
  # post "products", to: "products#create", as: :create_product
  # get "products/:id/edit", to: "products#edit", as: :edit_product
  # patch "products/:id", to: "products#update",  as: :update_product
  # delete "products/:id", to: "products#destroy", as: :destroy_product

  resources :products do 
    collection do
      get :top
    end
  end
end
