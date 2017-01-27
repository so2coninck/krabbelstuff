Rails.application.routes.draw do
resources :tasks
   get 'home' => 'tasks#home'

  get 'accueil'=>'tasks#accueil'

  get 'concept'=>'tasks#concept'

  get 'activite'=>'tasks#activite'

  get "livredor" => "tasks#index"

  get "new" => "tasks#new"

   root to: 'tasks#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
