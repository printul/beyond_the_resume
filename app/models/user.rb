class User < ApplicationRecord

  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :businesses
  has_many :videos, as: :videoable, dependent: :destroy
  has_many :applications
  has_many :professions

  has_many :identities, dependent: :destroy

  has_many :skills, through: :professions
  has_many :postings, through: :businesses

  def self.find_for_oauth(auth, signed_in_resource = nil)
    identity = Identity.find_for_oauth(auth)

    user = signed_in_resource ? signed_in_resource : identity.user



    if user.nil?
      # Get the existing user by email if the provider gives us a verified email.
      # If no verified email was provided we assign a temporary email and ask the
      # user to verify it on the next step via UsersController.finish_signup
      # binding.pry
      # email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email# if email_is_verified
      user = User.where(:email => email).first if email
      # Create the user if it's a new registration
      if user.nil?
        if auth.provider == "linkedin"
          user = User.new(
            first_name: auth.info.first_name,
            last_name: auth.info.last_name,
            email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
            password: Devise.friendly_token[0,20]
            )
        elsif auth.provider == "facebook"
          user = User.new(
            first_name: auth.extra.raw_info.first_name,
            last_name: auth.extra.raw_info.last_name,
            email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
            password: Devise.friendly_token[0,20]
          )
        end

        # check if confirmable is enabled
        user.skip_confirmation! if user.respond_to?(:skip_confirmation)
        user.save!
      end
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end

    user
  end


  # def email_verified?
  #   self.email && self.email !~ TEMP_EMAIL_REGEX
  # end
end
