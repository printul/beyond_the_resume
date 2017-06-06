class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :businesses
  has_many :videos, as: :videoable
  has_many :applications
  has_many :professions
  has_many :skills, through: :profession
  has_many :postings, through: :business
end
