class UsersController < ApplicationController
  before_action :select_user, only: [:show, :update, :edit, :destroy]
  skip_before_action :require_login, only: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
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
    # @user = User.find(user_params)
    @user = User.find(params[:id])
    # binding.pry
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def confirmdestroy

  end

  def destroy
    # binding.pry
    current_user.delete
    session[:user_id] = nil
    redirect_to '/login'
  end

  def show
    @public_issues = @user.issues.public_issues
    @private_issues = @user.issues.private_issues
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def select_user
    @user = User.find(params[:id])
  end

end
