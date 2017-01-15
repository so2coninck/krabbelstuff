Rails.application.routes.draw do
  get 'home' => 'pages#home'

  get 'accueil'=>'pages#accueil'

  get 'concept'=>'pages#concept'

  get 'activite'=>'pages#activite'

  get 'livredor'=>'pages#livre_d_or'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
