class PostingsController < ApplicationController
  before_action :set_business, only: [:create, :edit, :update, :destroy, :new]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index

    @postings = policy_scope(Posting).sort
    @user = current_user
    @applications = Application.where(user_id: current_user)
    @applied = []
    @applications.each { |application| @applied << application[:posting_id] }
    # @posting = Posting.new
  end

  def show
    @posting = Posting.find(params[:id])
    @applied = Application.find_by(posting_id: @posting, user_id: current_user)
    @posting.views += 1
    @posting.save
    @application = Application.new(posting_id: @posting)
    @videos = Video.where("user_id" == current_user.id)
    authorize @posting
  end

  def new
    @user = current_user
    @posting = Posting.new
    authorize @posting
  end

  def edit
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.business = @business
    authorize @posting
    if @posting.save
      redirect_to posting_path(@posting)
    else
      render 'new'
    end
  end

  def update
    @posting.update(posting_params)
    authorize @posting
    if @posting.save
      redirect_to posting_path(@posting)
    else
      render 'edit'
    end
  end

  def destroy
    @posting.destroy
    redirect_to postings_path
    authorize @posting
  end

  private

  def set_business
    @business = Business.find(params[:business_id])
  end

  def posting_params
    params.require(:posting).permit(:title, :description, :video_id)
  end
end
