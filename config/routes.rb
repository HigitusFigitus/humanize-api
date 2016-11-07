Rails.application.routes.draw do
  # constraints subdomain: 'api' do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      root "responses#index"
      resources :responses,  only: [:index, :create, :show]
      resources :companies,  only: [:index, :create, :show]
      resources :responders, only: [:index, :create, :show]
      resources :sessions,   only: [:index, :create, :show]
      resources :responses_by_value, only: :index
    end
  end
  # end
end
