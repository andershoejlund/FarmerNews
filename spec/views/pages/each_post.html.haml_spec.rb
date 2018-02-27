require 'rails_helper'
require 'factories/users'
require 'factories/questions'
require 'factories/news'

RSpec.describe "pages/_each_post.html.haml", type: :feature do
  let(:user) { create(:user) }
  let!(:question) { create(:question, user_id: user.id) }
  let!(:news) { create(:news, user_id: user.id) }
  before { visit root_path() }

  describe "post #vote_up" do
    context "logged in user" do
      it "should remove vote_arrow after vote" do
      end
    end
  end

end


