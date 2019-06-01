class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :confirmable

  has_many :conversation_participations
  has_many :conversations, through: :conversation_participations

  def has_conversation?
    conversations.size > 0
  end

  def latest_conversation
    conversations
      .joins(:messages)
      .order('messages.created_at desc')
      .uniq
      .first
  end
end
