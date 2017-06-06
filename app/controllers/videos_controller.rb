class VideosController < ApplicationController
  before_action :set_video, only: [:show, :destroy]
  before_action :video_params, only: [:new]

  def index
    @videos = current_user.videos
  end

  def show
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.videoable = current_user
    if @video.save
      redirect_to video_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def set_video
    @video = Video.find(params[:id])
  end

  def set_user
    # @user = current_user
  end

  def video_params
    params.require(:video).permit(:title, :url, :description)
  end
end
