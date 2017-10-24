Rails.application.routes.draw do
	
  get 'home' => 'home#index'

  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'

  get 'message' => 'message#message'

	resources :users
	resources :messages
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
