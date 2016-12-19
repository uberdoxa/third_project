Rails.application.routes.draw do
	get "signup" => "users#new"
	resource :session
	root :to => "users#index"
  resources :users
end
