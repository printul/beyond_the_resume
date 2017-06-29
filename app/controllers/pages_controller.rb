class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :terms ]

  def home
    if user_signed_in?
      if current_user.is_business?
        redirect_to businesses_path
      else
        if User.find(current_user.id).sign_in_count == 1 #first login
          if current_user.videos.empty?
            redirect_to new_video_path(@video)
            p "empty videos"
          elsif current_user.videos.length == 1
            p "has videos"
            redirect_to external_path(current_user.videos[0].url)
          end
        else
          "not first sign_in_count"
          redirect_to user_path(current_user)
        end
      end
    end
  end

  def terms
  end

end
