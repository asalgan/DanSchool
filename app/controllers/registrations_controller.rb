class RegistrationsController < ApplicationController

	def new
    @registration = Registration.new
    @evanston_classes = Registration.classes_evanston
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.request = request
      respond_to do |format|
      if @registration.deliver
        flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        format.js
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
    end
  end
  
end
