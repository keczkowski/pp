Rails.application.routes.draw do

  resources :tags
  resources :concepts

  devise_for :users, path: 'auth', path_names: { sign_in: 'login',
                                               sign_out: 'logout',
                                               password: 'secret',
                                               confirmation: 'verification',
                                               unlock: 'unblock',
                                               registration: 'register',
                                               sign_up: 'signup' }

  get "home/index"
  get "home/minor"

  root to: 'home#index'

end
