Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "categories#index"

  resources :categories, only: [:index, :show]

    resources :recipes do
      resources :comments, except: :index

    end
    resources :categories do
      resources :recipes
    end
end
