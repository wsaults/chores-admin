Rails.application.routes.draw do
  root 'static_pages#signIn', as: :signIn

  # get '/signIn', to: 'static_pages#signIn', as: :signIn
  get '/dashboard', to: 'static_pages#dashboard', as: :dashboard

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
