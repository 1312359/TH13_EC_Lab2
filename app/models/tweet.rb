class Tweet < ApplicationRecord
	  belongs_to :user

  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  cattr_accessor :current_user
end
