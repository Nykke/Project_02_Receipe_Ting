Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # the only suggestion for improvement i have are about consistent indentation
  # again your planning/ERDs make for very well-thought out routes. fantastic!

  root to: "categories#index"

  resources :categories, only: [:index, :show] #nice

  # nice solution to getting around triply nest-resources
  resources :recipes do
    resources :comments, except: :index
  end

  resources :categories do
    resources :recipes
  end
end
