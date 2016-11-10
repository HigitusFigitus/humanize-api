Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      root "responses#index"
      resources :companies,  only: [:index, :create, :show] do
        resources :sessions,   only: [:index, :create, :show] do
          resources :responders, :responses, only: [:index, :create, :show]
        end
      end

      #resources :responses,  only: [:index, :create, :show]
      #resources :responses_by_value, only: :index
      #resources :responses_before, only: :index
      #resources :responses_before_by_question, only: :index # restore after or do nested
      #resources :responses_before_per_session_per_question, only: :index
      #resources :responses_before_per_session_per_question_by_gender, only: :index
      #resources :responses_before_per_session_per_question_by_age, only: :index
      #resources :responses_before_per_session_per_question_by_position, only: :index
    end
  end
end
