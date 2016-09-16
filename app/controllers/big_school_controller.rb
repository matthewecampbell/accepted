class BigSchoolController < ApplicationController
  def show
    @user = current_user
    if params[:big_school] == "true"
      @user.big_school = true
      @user.save
    else
      @user.big_school = false
      @user.save
    end
    redirect_to dashboard_path
  end
end
