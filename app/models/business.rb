class Business < ApplicationRecord
  belongs_to :user
  has_many :videos, as: :videoable, dependent: :destroy
  has_many :postings, dependent: :destroy
  has_many :applications, through: :postings
end
