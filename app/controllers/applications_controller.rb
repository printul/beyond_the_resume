class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  before_action :set_posting, only: [:new, :create]
  before_action :set_user, only: [:new, :create]

  def index
    @applications = current_user.applications
  end

  def show
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @application.posting = @posting
    @application.user = @user
    if @application.save
      redirect_to application_path(@application)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @application.update(application_params)
    if @application.save
      redirect_to application_path(@application)
    else
      render 'edit'
    end
  end

  # def destroy
  #   @application.destroy
  #   redirect_to applications_path
  # end

  private

  def set_application
    @application = Application.find(params[:id])
  end

  def set_posting
    @posting = Posting.find(params[:posting_id])
  end

  def set_user
    @user = current_user
  end

  def application_params
    params.require(:application).permit(:video_id, :title, :description)
  end

end
