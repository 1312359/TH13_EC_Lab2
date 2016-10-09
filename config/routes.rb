Rails.application.routes.draw do
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'logout' => 'sessions#destroy'

  resources :users
  
  get 'admin' => 'admin#index'
  controller :sessions do 
  	get 'login'=>:new
  	post 'login' =>:create
  	delete 'logout' =>:destroy
  end
  root 'sessions#create', as: 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
