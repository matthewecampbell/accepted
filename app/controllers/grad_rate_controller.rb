class GradRateController < ApplicationController
  def show
    @user = current_user
    @user.grad_rate_preference = params[:grad_rate]
    @user.save
    redirect_to welcome_path
  end
end
