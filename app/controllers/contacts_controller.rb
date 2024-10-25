# app/controllers/contacts_controller.rb
class ContactsController < ApplicationController
  def create
    # Your logic to handle the contact form submission
    # For example, you could save the contact information or send an email
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Message sent successfully!"
      redirect_to root_path
    else
      flash[:alert] = "There was an error sending your message."
      render :new  # or render the appropriate view
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
