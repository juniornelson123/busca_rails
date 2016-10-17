Rails.application.routes.draw do
  root 'users#index'

  resources :users do
	#Autocomplete
	get :autocomplete_user_name, :on => :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
