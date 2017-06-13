class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      if current_user.is_business?
        redirect_to businesses_path
      else
        #if first time signin, and have one video
          #on login, redirect to video showpage

        #ifels
          #new video

        #else if one or more videos, second or later signin
          #profile

        if current_user.videos.count == 0
          redirect_to new_video_path(@video)
        else
          redirect_to user_path(current_user)
        end
      end
    end
  end
end
