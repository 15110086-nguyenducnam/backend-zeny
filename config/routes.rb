Rails.application.routes.draw do
  devise_for :khachhangs
  root "rails_admin/main#dashboard"
  mount BackEnd::Base => "/"
  devise_for :admins, controllers: {  sessions: 'admins/sessions',
                                      passwords: 'admins/passwords' }
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  resources :manage
end
