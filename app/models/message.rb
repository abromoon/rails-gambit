class Message < ApplicationRecord

  belongs_to :game
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :content, length: { minimum: 2 }

  after_create_commit -> { broadcast_append_to game }

end

