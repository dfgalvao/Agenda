Rails.application.routes.draw do
  resources :remembers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'remembers#index'
end
