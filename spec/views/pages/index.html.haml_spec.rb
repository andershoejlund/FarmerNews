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

  # describe "#post" do
  #   it "should show single post with title and description, when question is clicked" do
  #     click_link question.title
  #     expect(page).to have_content(question.title)
  #     expect(page).to have_content(question.description)
  #   end
  # end

end


