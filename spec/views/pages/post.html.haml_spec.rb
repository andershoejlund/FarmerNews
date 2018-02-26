require 'rails_helper'
require 'factories/users'
require 'factories/questions'
require 'factories/news'

RSpec.describe "pages/post.html.haml", type: :feature do
  let(:user) { create(:user) }
  let(:question) { create(:question, user_id: user.id) }
  let(:news) { create(:news, user_id: user.id) }

  it "should show post title and description" do
    visit question_path(question.id)
    expect(page).to have_content(question.title)
    expect(page).to have_content(question.description)
  end

end

