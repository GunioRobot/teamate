module SessionsHelper
  def sign_in(user)
    session[:user] = user[:id]
    self.current_user = user
  end

  def sign_out
    session[:user] = nil
    self.current_user = nil
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||= user_from_session
  end

  def current_user=(user)
    @current_user = user
  end

  def deny_access
    redirect_to login_path, :notice => "Please login to access this page."
  end

  private

    def user_from_session
      user_id = session[:user]
      return nil if user_id.nil?
      return User.find_by_id(user_id)
    end
end
