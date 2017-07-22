Rails.application.routes.draw do
  resources :blogs
  devise_for :students, :controllers => { registrations: 'registrations' }
  root to: "student_home#feed"
  get 'student_home/feed'

  get 'student_home/profile/:id' => 'student_home#profile'

  get '/add_skills' => 'student_home#add_skill'
  get '/add_experience' => 'student_home#add_experience'
  get '/add_por' => 'student_home#add_por'
  get 'student_home/notification'

  get 'student_home/write_blog'

  get 'student_home/my_blogs'
  
  get '/profilee' => 'student_home#profilee'
  post '/upload_image' => 'student_home#upload_image'
  
 
  get 'static_home/index'

  get 'static_home/message'

  get 'static_home/objective'

  get 'static_home/academics'

  get 'static_home/stats'

  get 'static_home/recruitment_procedure'

  get 'static_home/career_opt'

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
