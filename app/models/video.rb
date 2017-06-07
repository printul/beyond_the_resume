class Video < ApplicationRecord
  belongs_to :videoable, polymorphic: true
  has_many :applications
  has_many :postings
end
