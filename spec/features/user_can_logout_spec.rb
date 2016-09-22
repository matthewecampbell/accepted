require 'rails_helper'

RSpec.feature "a user can see a colleges" do
  scenario "a user visits a college page" do
      user = User.create!(id: 1, name: "Matt", oauth_token: "hi", sign_in_count: 1  )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit "/"
      expect(page).to have_content("Welcome")

      page.driver.delete(logout_path)

      expect(page).to have_content("See All Colleges")
  end
end
