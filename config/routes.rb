Rails.application.routes.draw do
  resources :progresses
  resources :menu_products
  resources :menus
  resources :home_pages
  resources :states
  resources :requests
  resources :products 
  resources :categories

  root "home_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
