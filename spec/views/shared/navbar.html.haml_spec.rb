require 'rails_helper'
require 'factories/users'

RSpec.describe "pages/shared/navbar.html.haml", type: :feature do
  let(:user) { create(:user) }
  context "when a user is logged in" do
    it "should have logged in content" do
      sign_in user
      visit root_path()
      within('.navbar') do
        expect(page).to have_content(user.username)
        expect(page).to have_content("logout")
        expect(page).to have_content("submit")
      end
    end
  end


  context "when a user isn't logged in" do
    it "should not have logged_in content" do
      visit root_path()
      within('.navbar') do
        expect(page).not_to have_content(user.username)
        expect(page).not_to have_content("logout")
        expect(page).not_to have_content("submit")
      end
    end
    it "should have 'login'" do
      visit root_path()
      within('.navbar') do
        expect(page).to have_content("login")
      end
    end
  end

end
