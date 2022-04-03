Rails.application.routes.draw do
  root "application#index"

  namespace :api do
    namespace :v1 do
      post "encrypt", to: "messages#create"
    end
  end
end
