Rails.application.routes.draw do

  root "home#index"

  get "/vendors",      to: "vendors#index",    as: :vendors
  get "/vendors/new",  to: "vendors#new",      as: :new_vendor
  post "/vendors/new", to: "vendors#create"
  get "/vendors/:id",  to: "vendors#show",     as: :show_vendor

  get "/markets",      to: "markets#index",    as: :markets
  get "/markets/new",  to: "markets#new",      as: :new_market
  post "/markets/new", to: "markets#create"
  get "/markets/:id",  to: "markets#show",     as: :show_market

  get "/signin",       to: "sessions#new",     as: :sign_in
  post "/signin",      to: "sessions#create"
  get "/signout",      to: "sessions#destroy", as: :sign_out


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
