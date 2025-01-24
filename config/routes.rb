Rails.application.routes.draw do
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
  
  devise_for :users
  
  root to: redirect("/dashboard")
  get '/dashboard', to: 'dashboard#index', as: :dashboard
  get 'shared/modal_delete_button/:path', to: 'shared#modal_delete_button', as: :modal_delete_button

  namespace :admin do
    root to: 'dashboard#index'
    get '/dashboard', to: 'dashboard#index', as: :dashboard
  end
end