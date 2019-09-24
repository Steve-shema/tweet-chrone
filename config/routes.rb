Rails.application.routes.draw do
 
  root 'cities#index'
  resources :cities do
    collection do
      post :confirm
    end
  end
end

