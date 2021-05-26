Rails.application.routes.draw do
  root "basic_informations#index"
  resources :basic_informations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
