Rails.application.routes.draw do
  get 'spices/title'
  get 'spices/image'
  get 'spices/description'
  get 'spices/notes'
  get 'spices/rating'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :spices

end
