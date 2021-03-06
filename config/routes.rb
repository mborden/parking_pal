Rails.application.routes.draw do

  devise_for :users
	root 'welcome#index'

	get 'user', to: 'user#index'

	"resources :map"
	get 'map' => 'map#index'
	get 'map/:postr' => 'map#index', as: 'showspot'

	get 'message', to: 'message#index'
	get 'message/display', to: 'message#display'
	get 'message/new', to: 'message#new'
	post 'message/compose', to: 'message#compose'
	get 'message/reply', to: 'message#reply'
	post 'message/send_reply', to: 'message#send_reply'
	get 'message/trash', to: 'message#trash'

	get 'parkinglot', to: 'parkinglot#index'

	get 'parkingspot', to: 'parkingspot#index'
	get 'parkingspot/:purpose/:user_id/:spot_id' => 'parkingspot#update', as: 'updatespot'

	get 'schedule', to: 'schedule#index'
	get 'schedule/modify', to: 'schedule#modify'

  get 'stats', to: 'stats#index'

	get 'layouts/menu'
	get 'message/menu'

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
