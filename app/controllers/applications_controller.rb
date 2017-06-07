class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  before_action :set_posting, only: [:create]
  def index
    @applications = curent_user.applications
  end

  def show
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @application.posting = @posting
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

  def destroy
    @application.destroy
    redirect_to applications_path
  end

  private

  def set_application
    @application = Application.find(params[:id])
  end

  def set_posting
    @posting = Posting.find(params[:posting_id])
  end

  def application_params
    params.require(:application).permit(:video_id)
  end

end
