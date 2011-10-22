class SessionsController < ApplicationController
  skip_before_filter :authenticate

  def new
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])

    if user.nil?
      flash[:error] = "Bad username/password combination"
      redirect_to '/login'
    else
      sign_in user
      redirect_to root_url
    end
  end

  def destroy
    sign_out
    flash[:notice] = "Successfull logout"
    redirect_to root_url
  end
end
