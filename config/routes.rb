# Rails.application.routes.draw do
#   get 'welcome/index'
#
#   get 'welcome/about'
#   namespace :api, defaults: { format: :json } do
#     resources :users do
#       resources :lists
#     end
#
#     resources :lists, only: [] do
#       resources :items, only: [:create, :update, :destroy]
#     end
#
#     resources :items, only: [:destroy]  end
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end



Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists
    end
    
    resources :lists, only: [] do
      resources :items, only: [:create, :update]
    end

    resources :lists, only: [:create, :update]

    resources :items, only: [:destroy, :update]
  end
end
