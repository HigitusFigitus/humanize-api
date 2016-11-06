Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get     "/responses",     to: "responses#index"
      post    "/responses",     to: "responses#create"
      get     "/responses/:id", to: "responses#show"
    end
  end
end
