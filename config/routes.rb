Rails.application.routes.draw do
  devise_for :users
  resources :complaint_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "complaint_lists#index"
end
