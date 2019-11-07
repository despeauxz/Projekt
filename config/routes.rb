Rails.application.routes.draw do
  resources :projects
  resources :teams
  
  as :user do
    put "/user/confirmation" => "confirmations#update", :via => :patch, :as => :update_user_confirmation
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmations: 'confirmations'
  }
  namespace :v1 do
    get 'home/index'
  end
  root to: "v1/home#index"
end
