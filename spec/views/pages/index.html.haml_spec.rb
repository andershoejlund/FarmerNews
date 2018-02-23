require 'rails_helper'
require 'factories/users'
require 'factories/questions'
require 'factories/news'

RSpec.describe "pages/index.html.haml", type: :feature do
  let(:user) { create(:user) }
  let(:question) { create(:question, user_id: user.id) }
  let(:news) { create(:news, user_id: user.id) }

  describe "#index" do

    it "should show both questions and news" do
      visit root_path()
      expect(page).to have_content(question.title)
      expect(page).to have_content(news.title)
    end
  end

  context "when a user is logged in" do
    it "navbar should show 'submit', username and logout" do
      sign_in user
      visit root_path()
      within('.navbar') do
        expect(page).to have_content(user.username)
        expect(page).to have_content("logout")
        expect(page).to have_content("submit")
      end
    end
  end

end

