class Video < ApplicationRecord
  belongs_to :videoable, polymorphic: true
  has_many :application
  has_many :postings, through: :businesses
end
