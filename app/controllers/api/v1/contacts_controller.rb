class Api::V1::ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    contact = Contacts.new(contact_params)

    if contact.save
      render json: { contact: contact }, status: :created
    else
      render json: { error: contact.errors }, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :link, :message)
  end
end
