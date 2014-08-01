class SitemapsController < ApplicationController

  def index
    @static_paths = [classes_intro_to_entrepreneurship_path, classes_public_speaking_path, classes_social_enterprise_path, blog_path]
    respond_to do |format|
      format.xml
    end
  end

end
