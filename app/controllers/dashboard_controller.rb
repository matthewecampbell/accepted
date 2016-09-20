class DashboardController < ApplicationController
  def show
    @user = current_user
    @recommended_colleges = College.recommended_colleges(current_user.act_score, current_user.in_state_max, current_user.out_of_state_max, current_user.affiliation_preference, current_user.grad_rate_preference, current_user.enrollment_preference)
  end
end
