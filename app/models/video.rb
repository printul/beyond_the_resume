class Video < ApplicationRecord
  belongs_to :videoable, polymorphic: true, dependent: :destroy
  has_many :application
  has_many :postings, through: :business
end
