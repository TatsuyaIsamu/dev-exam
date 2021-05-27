Rails.application.routes.draw do
  root "basic_informations#index"
  resources :basic_informations do
    member do
      get :station_add
    end  
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
