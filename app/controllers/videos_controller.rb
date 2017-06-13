class VideosController < ApplicationController
  before_action :set_video, only: [:show, :destroy]
  #before_action :video_params, only: [:create]
  skip_before_action :verify_authenticity_token, :authenticate_user!

  def index
    @videos = policy_scope(Video)
  end

  def show
    authorize @video
    client = Bitly.client
    @url = client.shorten("https://beyondtheresume.io/videos/" + @video.url)
  end

  def new
    # render layout: "videos_new"
    @video = Video.new
    authorize @video
    @guest_user = guest_user
    unless guest_user
      @guest_user = create_guest_user #create guest user if none
    end

    unless current_user
      render layout: "guest_videos_new" #guest user upload page
    else
      render layout: "registered_videos_new"
    end
  end

  def create
    @url = params[:data][:video][:token]
    @image = params[:data][:video][:embed_image_url]
    if @video = Video.find_by(url: @url)
      if @video.update(image_url: @image)
        head :ok
      else
        p "ERROR: UNABLE TO UPDATE"
      end
    else
      @title = "Video #{@url}"
      @user = User.find(params[:data][:video][:tags][0])
      @video = Video.new(title: @title, url: @url, image_url: @image)
      @video.videoable = @user
      authorize @video
      if @video.save
        head :ok
      else
      #if unable to create video in DB
        p "ERROR: UNABLE TO SAVE INTO DB"
      end
    end
  end

  def destroy
    #only allow video owner to delete video
    if @video.videoable == current_user
      @ziggeo = Ziggeo.new(ENV["ZIGGEO_TOKEN"],
                          ENV["ZIGGEO_PRIVATE_KEY"],
                          ENV["ZIGGEO_ENCRYPTION_KEY"])
      @ziggeo.videos().delete(@video.url)
      authorize @video
      @video.destroy
      redirect_to videos_path
    else
      #redirect when invalid deletion
      redirect_to root_path
    end
  end

  private

  def set_video
    @video = Video.find_by(url: params[:url])
    authorize @video
  end

  def set_user
    # @user = current_user
  end

  def video_params
    params.require(:video).permit(:title, :url, :image_url)
  end
end
