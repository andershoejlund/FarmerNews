require 'rails_helper'

RSpec.describe "pages/search.html.haml", type: :feature do
  before { visit root_path() }

  describe "#search" do
    it "should return error if empty" do
      fill_in "search[string]", with:  ""
      click_on('Search')
      expect(page).to have_content("Your search is either empty or too long (max 50 characters). Try again.")
    end
    it "should return error if to long (above 50 characters)" do
      fill_in "search[string]", with:  "ah" * 53
      click_on('Search')
      expect(page).to have_content("Your search is either empty or too long (max 50 characters). Try again.")
    end
  end

end


