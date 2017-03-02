Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :editors
  resources :framescounts
  get 'widgets/update_widget'
  get 'widgets/delete'
  root to: "editors#index"
end
