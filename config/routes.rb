Par::Application.routes.draw do

  root :to => 'application#index'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

end
