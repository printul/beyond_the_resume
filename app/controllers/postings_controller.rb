class PostingsController < ApplicationController
  before_action :set_business, only: [:create, :edit, :update, :destroy, :new]

  def index
    if params[:business_id].present?
      @postings = Business.find(params[:business_id]).postings
    else
      @postings = Posting.all
    end
    @user = current_user
    @posting = Posting.new
  end

  def show
    @posting = Posting.find(params[:id])
    @posting.views += 1
    @posting.save
  end

  def new
    @user = current_user
    @posting = Posting.new
  end

  def edit
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.business = @business
    if @posting.save
      redirect_to posting_path(@posting)
    else
      render 'new'
    end
  end

  def update
    @posting.update(posting_params)
    if @posting.save
      redirect_to posting_path(@posting)
    else
      render 'edit'
    end
  end

  def destroy
    @posting.destroy
    redirect_to postings_path
  end

  private

  def set_business
    @business = Business.find(params[:business_id])
  end

  def posting_params
    params.require(:posting).permit(:title, :description, :video_id)
  end
end
