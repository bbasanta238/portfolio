class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      MailToAdminMailer.create_message(message: @message).deliver_now
      redirect_to root_path
    end
  end

  private

  def message_params
    {
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      subject: params[:subject],
      text: params[:text],
    }
  end
end
