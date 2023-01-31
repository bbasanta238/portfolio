class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    {
      name: params[:name],
      email: params[:email],
      subject: params[:subject],
      text: params[:text],
      phone_number: params[:phone_number],
    }
  end
end
