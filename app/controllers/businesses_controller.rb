class BusinessesController < ApplicationController
    before_action :set_business, only: [:show, :edit, :update, :destroy]

  def index
    @businesses = current_user.businesses
  end

  def show
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
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
    if @business.save
      redirect_to business_path(@business)
    else
      render 'edit'
    end
  end

  def destroy
    @business.destroy
    redirect_to business_index_path
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:name, :address, :phone_number, :email, :industry)
  end

end
