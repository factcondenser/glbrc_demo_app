Rails.application.routes.draw do
  get 'applications/new'
  get 'users/new'
  get 'sessions/new'

  # static pages
  root 'static_pages#home'

  # dynamic pages
	get 		'/login', 	to: 'sessions#new'
	post 		'/login', 	to: 'sessions#create'
	delete	'/logout', 	to: 'sessions#destroy'

  resources :users do
    member do
    end
  end
end
