class ActController < ApplicationController
  def show
    @user = current_user
    @user.act_score = params[:score]
    @user.save
    redirect_to welcome_path
  end
end
