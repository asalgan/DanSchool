class SitemapsController < ApplicationController
  caches_page :index

  def index
    @static_paths = [classes_intro_to_entrepreneurship_path, classes_public_speaking_path, classes_social_enterprise_path, blog_path]
  end

end
