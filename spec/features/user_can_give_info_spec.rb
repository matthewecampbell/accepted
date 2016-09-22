require 'rails_helper'

RSpec.feature "a user can navigate through welcome page" do
  scenario "a user visits welcome page" do
    VCR.use_cassette("a user fills in welcome page") do
      user = User.create!(id: 1, name: "Matt", oauth_token: "hi", sign_in_count: 1  )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit '/welcome'

      fill_in "Act score", with: 33
      fill_in "Enrollment preference", with: 8000
      fill_in "Out of state max", with: 80000
      fill_in "In state max", with: 80000
      fill_in "Grad rate preference", with: 60
      choose "affiliation_preference_public"
      click_on "Submit Preferences"

      user = User.find(1)

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content("Accepted's recommended")
      expect(user.act_score).to eq(33)
      expect(user.enrollment_preference).to eq(8000)
      expect(user.in_state_max).to eq(80000)
      expect(user.out_of_state_max).to eq(80000)
      expect(user.grad_rate_preference).to eq(60)
      expect(user.affiliation_preference).to eq("public")
    end
  end
end
