DanSchool::Application.routes.draw do

	root :to => "home#index"

	resources :contacts, :only => [:new, :create] do
  	get 'thank_you', :on => :collection
	end
	
end
