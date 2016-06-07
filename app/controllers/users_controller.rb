class UsersController < ApplicationController
  before_action :select_user, only: [:show, :update, :edit, :destroy]
  skip_before_action :require_login, only: [:new, :create]

  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def select_user
    @user = User.find(params[:id])
  end

end
