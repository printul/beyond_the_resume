class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :finish_signup, :new, :create]
  def new
  end

  def create
  end

  # GET /users/:id.:format
  def show
    # authorize! :read, @user
    @title = "Profile"
    authorize @user
  end

  # GET /users/:id/edit
  def edit
    # authorize! :update, @user
  end

  # PATCH/PUT /users/:id.:format
  def update
    # authorize! :update, @user
    authorize @user

    respond_to do |format|
      if @user.update(user_params)
        sign_in(@user == current_user ? @user : current_user, :bypass => true)
        format.html { redirect_to @user, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET/PATCH /users/:id/finish_signup
  # def finish_signup
  #   # authorize! :update, @user
  #   if request.patch? && params[:user] #&& params[:user][:email]
  #     if @user.update(user_params)
  #       # @user.confirm!
  #       sign_in(@user, :bypass => true)
  #       redirect_to root_path, notice: 'Your profile was successfully updated.'
  #     else
  #       @show_errors = true
  #     end
  #   end
  # end

  # DELETE /users/:id.:format
  def destroy
    # authorize! :delete, @user
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
      authorize @user
    end

    def user_params
      accessible = [ :name, :email ] # extend with your own params
      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
      params.require(:user).permit(accessible, :first_name, :last_name, :phone_number, :is_searchable?, :document, :created_at, :profession, :skill1, :skill2, :skill3, :skill4)

    end
end

