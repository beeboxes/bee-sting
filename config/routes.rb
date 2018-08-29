Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'devices#index'
  get 'devices/:uuid', to: 'devices#show'
end
