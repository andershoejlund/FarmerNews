require 'rails_helper'
require 'factories/users'
require 'factories/questions'
require 'factories/news'

RSpec.describe "questions/index.html.haml", type: :feature do
  let!(:user) { create(:user) }
  let!(:question) { create(:question, user_id: user.id) }
  let!(:news) { create(:news, user_id: user.id) }
  before { visit questions_path() }

  it "should show questions" do
    expect(page).to have_content(question.title)
  end

  it "should not show news" do
    expect(page).not_to have_content(news.title)
  end

end
