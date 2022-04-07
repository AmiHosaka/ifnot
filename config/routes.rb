Rails.application.routes.draw do
  post 'posts/create' => 'posts#create'
  get 'posts/index' => 'posts#index'
  get 'posts/:id' => 'posts#show'
  post 'posts/:id/destroy' => 'posts#destroy'

  post 'topics/create' => 'topics#create'
  get 'topics/index' => 'topics#index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
