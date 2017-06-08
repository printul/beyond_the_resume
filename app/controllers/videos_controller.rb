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
    @info = JSON.parse(params['payload'])
    @url = @info['data']['url']
    @user = User.find(@info['data']['payload'])
    @thumbnail = @info['data']['snapshotUrl']
    @video = Video.new(url: @url, title: @thumbnail)
    @video.videoable = @user
    if @video.save
      redirect_to video_path(@video)
    else
      render 'new'
    end
  end

  def destroy
    @video.destroy
    redirect_to videos_path
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
