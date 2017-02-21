Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

resources :tasks

  get 'home' => 'tasks#home'

  get 'accueil'=>'tasks#accueil'

  get 'concept'=>'tasks#concept'

  get 'activités'=>'tasks#activite'

  get "livredor" => "tasks#index"

  get "livredornew" => "tasks#new"




   root to: 'tasks#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
