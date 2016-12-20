Rails.application.routes.draw do
	get "signup" => "users#new"
	resource :session
	root :to => "sessions#new"
  resources :users, :levels, :challenges
end
