Rails.application.routes.draw do
  resources :interests
  resources :cost_types
  resources :costs
  resources :todo_items
  resources :todo_lists
  resources :quotes
  resources :retrospectives
  resources :feelings
  resources :reflections
  resources :goals
  resources :accomplishments
  resources :games
  match '/games/:id/join' => 'games#join',   via: [:patch], as: :join
  resource  :session, only: [:new, :create, :destroy]
  resources :examples, only: [:index]

  resources :messages, only: [:show, :index] do
    resources :comments, only: [:create]
  end

  root 'examples#index'
end
