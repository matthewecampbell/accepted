require 'rails_helper'

RSpec.feature "a user can navigate through welcome page" do
  scenario "a user visits welcome page" do
    VCR.use_cassette("a user fills in welcome page") do
      user = User.new(id: 1, name: "Matt", oauth_token: "hi", sign_in_count: 1  )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit '/welcome'

      fill_in :amount, with: 8000
      click_on "Submit"

      fill_in :score, with: 33
      click_on "Submit"


    end
  end
end
