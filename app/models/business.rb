class Business < ApplicationRecord
  belongs_to :user
  has_many :videos, as: :videoable
  has_many :postings
  has_many :applications, through: :posting
end
