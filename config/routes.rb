DanSchool::Application.routes.draw do

  get "registration_form/new"
  get "registration_form/create"
	root :to => "home#index"

	get '/classes/intro_to_entrepreneurship' => 'classes#intro_to_entrepreneurship'
	get '/classes/public_speaking' => 'classes#public_speaking'
	get '/classes/social_enterprise' => 'classes#social_enterprise'
	get '/blog' => 'blog#index'

	# match '/contacts',     to: 'contacts#new',             via: 'get'
	resources "contacts", only: [:new, :create]
	resources "registrations", only: [:new, :create]

	get "/sitemap.xml" => "sitemaps#index", as: "sitemap", defaults: { format: "xml" }
	
end
