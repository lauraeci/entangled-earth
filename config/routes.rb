Rails.application.routes.draw do
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
  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  root 'examples#index'
end
