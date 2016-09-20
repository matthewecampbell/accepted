class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    user.sign_in_count += 1
    user.save
    if user.sign_in_count == 1
      redirect_to welcome_path
    else
      redirect_to dashboard_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
