class Application < ApplicationRecord
  belongs_to :user
  belongs_to :posting
  has_one :video
end
