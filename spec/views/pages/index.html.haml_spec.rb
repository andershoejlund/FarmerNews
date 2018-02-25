require 'rails_helper'
require 'factories/users'
require 'factories/questions'
require 'factories/news'

RSpec.describe "pages/index.html.haml", type: :feature do
  let(:user) { create(:user) }
  let!(:question) { create(:question, user_id: user.id) }
  let!(:news) { create(:news, user_id: user.id) }
  before { visit root_path() }

  describe "#index" do
    it "should show both questions and news" do
      expect(page).to have_content(question.title)
      expect(page).to have_content(news.title)
    end

    context "when a question is clicked" do
      it "should direct to question_path" do
        click_link question.title
        expect(current_path).to eq(show_post_path(question.id))
      end
    end

    context "newslinks" do
      it "should have target blank (open in new window)" do
        expect(find_link(news.title)[:target]).to eq("_blank")
      end
    end
  end
end


