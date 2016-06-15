class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.create(uid: request.env['omniauth.auth']['uid'], provider: request.env['omniauth.auth']['provider'], name: request.env['omniauth.auth']['info']['name'])

    session[:user_id] = @user.id
    render 'issues/index'
    # user = User.find_by_email(params[:email])
    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id
    #   redirect_to '/'
    # else
    #   redirect_to '/login'
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
