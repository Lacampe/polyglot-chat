class ConversationsController < ApplicationController
  layout 'conversations'

  def home
    redirect_to conversation_path(user.latest_conversation) if user.has_conversation?
  end

  def show
    @conversation = Conversation.find(params[:id])
  end
end
