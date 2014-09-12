DanSchool::Application.routes.draw do

  get "registration_form/new"
  get "registration_form/create"
	root :to => "home#index"

	get '/classes/intro-to-entrepreneurship', to: 'classes#intro_to_entrepreneurship', as: 'classes_intro_to_entrepreneurship'
	get '/classes/public-speaking', to: 'classes#public_speaking', as: 'classes_public_speaking'
	get '/classes/social-enterprise', to: 'classes#social_enterprise', as: 'classes_social_enterprise'
	get '/blog' => 'blog#index'

	# match '/contacts',     to: 'contacts#new',             via: 'get'
	resources "contacts", only: [:new, :create]
	resources "registrations", only: [:new, :create]

	get "/sitemap.xml" => "sitemaps#index", as: "sitemap", defaults: { format: "xml" }
	
end
