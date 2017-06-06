class Application < ApplicationRecord
  belongs_to :user
  belongs_to :video
  belongs_to :posting
end
