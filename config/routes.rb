Rails.application.routes.draw do
  get 'sessions/new'
  
  # static pages
  root 'static_pages#home'

  # dynamic pages
	get 		'/login', 	to: 'sessions#new'
	post 		'/login', 	to: 'sessions#create'
	delete	'/logout', 	to: 'sessions#destroy'

  resources :links, only: [:create, :destroy]
end
