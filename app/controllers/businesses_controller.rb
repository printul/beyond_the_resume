class BusinessesController < ApplicationController
  before_action :set_user, only: [:index, :create, :show, :edit, :update]
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  def index
    @businesses = policy_scope(Business)
  end

  def show
    @postings = @business.postings
  end

  def new
    @business = Business.new
    authorize @business
  end

  def create
    @business = Business.new(business_params)
    @business.user = @user
    authorize @business
    if @business.save
      redirect_to business_path(@business)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @business.update(business_params)
    authorize @business
    if @business.save
      redirect_to business_path(@business)
    else
      render 'edit'
    end
  end

  def destroy
    @business.destroy
    redirect_to businesses_path
  end

  private

  def set_business
    @business = Business.find(params[:id])
    authorize @business
  end

  def business_params
    params.require(:business).permit(:name, :address, :phone_number, :email, :industry, :city, :zipcode, :logo)
  end

  def set_user
    @user = current_user
  end

end
