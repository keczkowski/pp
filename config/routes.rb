Rails.application.routes.draw do

  resources :contact_forms
  resources :tags
  resources :concepts
  resources :users

  devise_for :users, path: 'auth', path_names: { sign_in: 'login',
                                               sign_out: 'logout',
                                               password: 'secret',
                                               confirmation: 'verification',
                                               unlock: 'unblock',
                                               registration: 'register',
                                               sign_up: 'signup' }

  get "home/index"
  get "home/contact"
  get "home/stats"
  get 'def/:id' => 'home#def', as: 'def'
  root to: 'home#index'

end
