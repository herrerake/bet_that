class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.errors.full_messages.first
  end

  def create
    @user = User.create(user_params)
    binding.pry
    if @user.save
      flash[:notice] = "User was successfully created."
      redirect_to events_path
    else
      render :show
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
