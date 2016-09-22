require 'rails_helper'

RSpec.feature "a user can favorite colleges" do
  scenario "a user visits a college page and favorites" do
      user = User.create!(id: 1, name: "Matt", oauth_token: "hi", sign_in_count: 1  )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit '/colleges/912'

      expect(page).to have_content("Marquette University")

      click_on "Favorite"
      user = User.find(1)

      expect(user.favorite_colleges.first.name).to eq("Marquette University")
  end
end
