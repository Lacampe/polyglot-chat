Rails.application.routes.draw do
  authenticated :user do
    root to: 'conversations#home', as: :authenticated_root
  end
  root to: 'pages#home', as: :unauthenticated_root

  devise_for :users,
    path: '', path_names: { sign_up: 'signup', sign_in: 'login', sign_out: 'logout' }

  resources :conversations, only: [:show] do
    resources :messages, only: [:create]
  end
end
