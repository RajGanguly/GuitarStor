Rails.application.routes.draw do
	root :to => "guitar#index"
	resources :guitar, :shallow => true do
		get "sellGuitar"
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
