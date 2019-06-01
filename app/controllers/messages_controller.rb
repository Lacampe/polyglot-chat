class MessagesController < ApplicationController
  def create
    Message.create!(message_params)

    redirect_to conversation_path(conversation)
  end

  private

  def message_params
    params
      .require(:message)
      .permit(:body)
      .merge!(sender: user, conversation: conversation)
  end

  def conversation
    Conversation.find(params[:conversation_id])
  end
end
