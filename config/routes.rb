Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/authenticate', to: 'users#authenticate'
      get '/budgets/:id/all', to: 'budgets#show_all_transactions'
      resources :users
      resources :budgets
      resources :budget_categories
      resources :transactions
    end
  end
end
