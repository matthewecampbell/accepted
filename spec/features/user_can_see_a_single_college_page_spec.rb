require 'rails_helper'

RSpec.feature "a user can see a colleges" do
  scenario "a user visits a college page" do
    VCR.use_cassette("college controller gets a single college") do
      user = User.create!(id: 1, name: "Matt", oauth_token: "hi", sign_in_count: 1  )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit '/colleges/912'

      expect(page).to have_content("Marquette University")
    end
  end
end
