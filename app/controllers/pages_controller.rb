class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      if current_user.is_business?
        redirect_to businesses_path
      else
      redirect_to user_path(current_user)
      end
    end
  end
end
