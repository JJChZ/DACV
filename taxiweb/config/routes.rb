Rails.application.routes.draw do
  get 'pages/historyservicies'

  resources :services
  
  get 'pages/pending_services'
  
  get 'services/:id/confirm', controller: :services, action: :confirm, as: :confirm_service
  
  get 'services/:id/favorite', controller: :services, action: :favorite, as: :favorite_service
  
  get 'pages/my_services/:id' , controller: :pages, action: :my_services, as: :pages_my_service

  get 'pages/estimate_cost'

  get 'pages/e'

  resources :profiles
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  #get 'pages/index'
  root 'pages#estimate_cost'

  get 'pages/about_us'

  get 'pages/faq'

  get 'pages/tos'

  get 'pages/contact_us'

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
