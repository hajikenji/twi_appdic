Rails.application.routes.draw do
  resources :twi_controlls do
  collection do
    post :confirm
    end
  end
end
