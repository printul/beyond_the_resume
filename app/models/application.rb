class Application < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :posting, dependent: :destroy
  belongs_to :video, dependent: :destroy

  scope :newest_first, lambda { order("created_at DESC") }
end
