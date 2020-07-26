Rails.application.routes.draw do
  

  # get 'companies/index'
  resources :addresses
  resources :people
  resources :companies
  root to: 'admin/dashboard#index'
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
