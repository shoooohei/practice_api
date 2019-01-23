Rails.application.routes.draw do
  # formatの指定すると、そのアドレスにformatを指定しないでアクセスが来ても、自動でformatをつけてくれる。
  # formatを指定した場合：Processing by Api::V1::PostsController#index as JSON
  # formatを指定しなかった場合：Processing by Api::V1::PostsController#index as */*
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :posts
    end
  end
end
