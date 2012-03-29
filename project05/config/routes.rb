Articles::Application.routes.draw do
  resources :authors

  resources :articles
 
#    articles GET    /articles(.:format)          articles#index
#             POST   /articles(.:format)          articles#create
# new_article GET    /articles/new(.:format)      articles#new
#edit_article GET    /articles/:id/edit(.:format) articles#edit
#     article GET    /articles/:id(.:format)      articles#show
#             PUT    /articles/:id(.:format)      articles#update
#             DELETE /articles/:id(.:format)      articles#destroy
#	root :to => "articles#index"
#    get root => "articles#index"
#	post root => "articles#create"
#	get "/new" => "articles/new#new"
#	match '/new', :to => 'articles/new#new'
#   get "/:id/edit" => "articles/:id/edit#edit"        
#	match '/:id/edit', :to => 'articles/:id/edit#edit'
#	get "/:id" => "articles/:id#show"
#	match '/:id', :to => 'articles/:id#show'
#	post '/:id' => 'articles/:id#update'
#	delete '/:id' => 'articles/:id#delete'
	
# new_article GET    /articles/new(.:format)      articles#new
#edit_article GET    /articles/:id/edit(.:format) articles#edit
#     article GET    /articles/:id(.:format)      articles#show
#             PUT    /articles/:id(.:format)      articles#update
#             DELETE /articles/:id(.:format)      articles#destroy

  root :controller => 'articles', :action => 'index'
  #redirect_to root_path
  #match "articles/:id", :as => root
  #match "articles/new", :as => root
  #match "articles/:id/edit", :as => root
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
  #connect ':controller/:action/:id.:format'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
