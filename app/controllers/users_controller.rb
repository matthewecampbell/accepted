class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    redirect_to welcome_path
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def raw_params
    params.require(:user).permit(:act_score, :enrollment_preference, :out_of_state_max, :in_state_max, :grad_rate_preference, params[:affiliation_preference])
  end

  def user_params
    raw_params.merge!(affiliation_preference: params[:affiliation_preference])
  end
end
