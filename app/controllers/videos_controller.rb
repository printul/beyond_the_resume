class VideosController < ApplicationController
  before_action :set_video, only: [:show, :destroy]
  #before_action :video_params, only: [:create]
  skip_before_action :verify_authenticity_token, :authenticate_user!

  def index
    @videos = current_user.videos
  end

  def show
  end

  def new
    @video = Video.new
  end

  def create
    @url = params[:data][:video][:token]
    @title = params[:data][:video][:embed_image_url]
    @user = User.find(params[:data][:video][:tags][0])
    @video = Video.new(url: @url, title: @title)
    @video.videoable = @user
    if @video.save
      head :ok
    else
      p "ERROR: UNABLE TO SAVE INTO DB"
    end
  end

  def destroy
    @video.destroy
    redirect_to videos_path
  end

  private

  def set_video
    @video = Video.find_by(url: params[:url])
  end

  def set_user
    # @user = current_user
  end

  def video_params
    params.require(:video).permit(:title, :url, :description)
  end
end
