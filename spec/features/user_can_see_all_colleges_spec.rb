require 'rails_helper'

RSpec.feature "a user can see all colleges" do
  scenario "a user visits colleges" do
    VCR.use_cassette("college controller gets all colleges") do
      visit '/colleges'

      expect(page).to have_content("Marquette University")
      expect(page).to have_content("Harvard University")
    end
  end
end
