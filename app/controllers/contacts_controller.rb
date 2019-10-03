class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:notice] = 'Your message has been sent successfully!'
    else
      flash[:alert] = "Your message wasn't sent!"
    end

    redirect_back(fallback_location: root_path)
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end