class Posting < ApplicationRecord
  belongs_to :business, dependent: :destroy
  belongs_to :video
  has_many :applications
end
