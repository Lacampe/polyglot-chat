class Conversation < ApplicationRecord
  has_many :conversation_participations
  has_many :participants, through: :conversation_participations
  has_many :messages
end
