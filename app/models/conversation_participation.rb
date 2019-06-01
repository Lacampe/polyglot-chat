class ConversationParticipation < ApplicationRecord
  belongs_to :participant, class_name: 'User', foreign_key: 'user_id'
  belongs_to :conversation
end
