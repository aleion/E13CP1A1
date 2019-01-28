Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sales', to: 'sales#index'
  get 'sales/new'
  post 'sales', to: 'sales#create'
end
