Rails.application.routes.draw do
  devise_for :khachhangs
  root "rails_admin/main#dashboard"
  mount BackEnd::Base => "/"
  devise_for :admins, controllers: {  sessions: 'admins/sessions',
                                      passwords: 'admins/passwords' }
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  resources :manage, only: [:index, :update]
  resources :analysis
  resources :hopdongcungcaps do
    resources :chitiethdcungcap
  end

end
