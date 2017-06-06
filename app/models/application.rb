class Application < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :posting, dependent: :destroy
  belongs_to :video, dependent: :destroy
end
