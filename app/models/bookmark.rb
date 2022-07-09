class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :recip

  validates :user_id, uniqueness: { scope: :recip_id }
end
