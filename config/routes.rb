Rails.application.routes.draw do
  resources :games
  match '/games/:id/join' => 'games#join',   via: [:patch], as: :join
  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  root 'examples#index'
end
