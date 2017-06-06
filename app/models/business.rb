class Business < ApplicationRecord
  belongs_to :user
  has_many :videos, as: :videoable, dependent: :destroy
  has_many :postings
  has_many :applications, through: :posting
end
