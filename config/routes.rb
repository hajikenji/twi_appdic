Rails.application.routes.draw do
  resources :posts do
  collection do
    post :confirm
    end
  collection do
    get :top
    end
  end
end
