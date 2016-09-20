class InStateMaxController < ApplicationController
  def show
    @user = current_user
    @user.in_state_max = params[:tuition]
    @user.save
    redirect_to welcome_path
  end
end
