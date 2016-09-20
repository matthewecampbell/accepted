class AffiliationController < ApplicationController
  def show
    @user = current_user
    @user.affiliation_preference = params[:affiliation_preference]
    @user.save
    redirect_to dashboard_path
  end
end
