Rails.application.routes.draw do
  get 'transponders/index'
  get 'events/index'
  get 'api/events', to: 'events#index'
  # resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
