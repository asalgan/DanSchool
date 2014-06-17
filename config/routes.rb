DanSchool::Application.routes.draw do

	root :to => "home#index"

	resources :contacts, :only => [:new, :create] do
  	get 'thank_you', :on => :collection
	end

	get '/classes/intro_to_entrepreneurship' => 'classes#intro_to_entrepreneurship'
	get '/classes/public_speaking' => 'classes#public_speaking'
	get '/classes/social_enterprise' => 'classes#social_enterprise'
	
end
