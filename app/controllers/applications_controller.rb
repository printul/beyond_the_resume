class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  before_action :set_posting, only: [:new, :create]
  before_action :set_user, only: [:index, :new, :create]

  def index
    # authorize @user
    @applications = policy_scope(Application)
  end

  def show
  end

  def new
    @application = Application.new
    authorize @application
  end

  def create
    @application = Application.new(application_params)
    @application.posting = @posting
    @application.user = @user
    authorize @application
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
    authorize @application
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
    authorize @application
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
