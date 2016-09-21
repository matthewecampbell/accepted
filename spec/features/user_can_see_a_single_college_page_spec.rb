require 'rails_helper'

RSpec.feature "a user can see a colleges" do
  scenario "a user visits a college page" do
    VCR.use_cassette("college controller gets a single college") do
      visit '/colleges/912'

      expect(page).to have_content("Marquette University")
    end
  end
end
