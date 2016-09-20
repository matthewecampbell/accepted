class EnrollmentPreferenceController < ApplicationController
  def show
    @user = current_user
    @user.enrollment_preference = params[:amount]
    @user.save
    redirect_to welcome_path
  end
end
