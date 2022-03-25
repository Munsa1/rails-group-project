Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
  get 'foods/new'
  get 'foods/create'
  get 'foods/destroy'
  get 'foods/ishow'
  get 'foods/index'
  get 'foods/new'
  post 'foods/create'
  get 'foods/destroy'
  get 'recepie_foods/new'
  get 'recepie_foods/edit'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/create'
  get 'recipes/destroy'
  devise_for :users
  root 'welcome#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipe_foods, only: %i[new create destroy update edit]
    resources :shopping_lists, only: %i[index]
  end
    resources :users, only: [:create] do
    resources :foods, only: %i[index new create destroy]
  end
end
