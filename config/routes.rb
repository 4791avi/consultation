Rails.application.routes.draw do
  post 'consult/create_patient'
  post 'consult/create_doctor'
  post 'consult/create_appointment'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "consult#home"
  # resources :consult
  get 'consult/home'
  devise_scope :user do
    authenticated :user do
      root 'consult#home', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
   
   
   
end
