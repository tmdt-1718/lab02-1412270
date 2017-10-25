Rails.application.routes.draw do
	
  get '' => 'home#index'

  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'

  get 'message' => 'message#message'
  #post 'message' => 'message#create'

  get 'friend' => 'friend#friend'

	resources :users
	resources :messages
  resources :friend
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
