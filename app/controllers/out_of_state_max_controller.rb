class OutOfStateMaxController < ApplicationController
  def show
    @user = current_user
    @user.out_of_state_max = params[:tuition]
    @user.save
    redirect_to welcome_path
  end
end
