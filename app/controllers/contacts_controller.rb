class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
    
  def create
    @contact = Contact.new(params[:contact])
    if @contact.deliver
      redirect_to root_url
    else
      render :new
    end
  end
  
end