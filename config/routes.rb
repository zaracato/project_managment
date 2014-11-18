BaseApp::Application.routes.draw do

  resources :tasks

  resources :steps

  resources :statuses

  resources :projects do
    member do
      get :new_task
      post :add_task
    end
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "pages/index"

  get "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

end
