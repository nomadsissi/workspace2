Rails.application.routes.draw do
  get 'notes/new' => 'notes#new'
  post 'notes' => 'notes#create'
  root 'home#top'
  get 'r2' => 'home#r2'
  get 'r3' => 'home#r3'
  get '/notes/hashtag/:id' => 'notes#hashtags',as:'hashtag'
  get '/notes/:id' => 'notes#show',as:'note'
  get '/notes/:id/edit' => 'notes#edit',as:'edit_note'
  patch '/notes/:id' => 'notes#update', as: 'update_note'
  delete '/notes/:id' => 'notes#destroy', as:'destroy_note'
  post 'search' => 'tabs#search',as:'search'
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
