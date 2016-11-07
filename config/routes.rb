Rails.application.routes.draw do
  # constraints subdomain: 'api' do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :responses,  only: [:index, :create, :show]
      resources :companies,  only: [:index, :create, :show]
      resources :responders, only: [:index, :create, :show]
      resources :sessions,   only: [:index, :create, :show]
    end
  end
  # end
end
