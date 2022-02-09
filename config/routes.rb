Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :articles
      get 'registers', to: 'registers#index'
      post 'registers', to: 'registers#create'
      get '/registers/:id', to: 'registers#show'
      get 'scores', to: 'scores#index'
      post 'scores', to: 'scores#create'
    end
  end
end
