Rails.application.routes.draw do
  get 'profiles/show'

  devise_for :users, :controllers => { :registrations => 'registrations'}
  devise_scope :user do
  get 'register', to: 'devise/registrations#new', as: :register
  get 'login', to: 'devise/sessions#new', as: :login
end
  resources :statuses
    root to: "statuses#index"

    get '/:id' , to: 'profiles#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
