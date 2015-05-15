class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome Erik's Foundation!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(profile_params)
       flash[:success] = "Profile updated"
       redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end