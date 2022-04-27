Rails.application.routes.draw do

  get 'categories/index' => 'categories#index' #分類を一覧表示する
  get 'categories/:id' => 'categories#show' #選択した分類に属する議題を一覧表示する

  post 'topics/create' => 'topics#create' #新しく議題を作成する
  get 'topics/index' => 'topics#index' #議題を一覧表示する
  get 'topics/:id' => 'topics#show' #選択した議題に属する投稿を一覧表示する

  post 'posts/create' => 'posts#create' #新しく投稿を作成する
  get 'posts/index' => 'posts#index' #投稿を一覧表示する
  get 'posts/:id' => 'posts#show' #投稿詳細を表示する
  post 'posts/:id/destroy' => 'posts#destroy' #投稿を削除する

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
