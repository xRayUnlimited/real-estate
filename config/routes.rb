Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    get 'properties', to: 'properties#index'
    get 'cities/:city', to: 'properties#city'
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
