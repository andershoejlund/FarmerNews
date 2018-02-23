require 'rails_helper'
require 'factories/users.rb'
require 'factories/questions.rb'
require 'factories/news.rb'


RSpec.describe CommentsController, type: :controller do
  let(:user) { create(:user) }
  let(:question) { create(:question, user_id: user.id) }
  let(:news) { create(:news, user_id: user.id) }


  describe "GET #new" do
    it "returns http success" do
      get :new, params: {question_id: question.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index, params: {question_id: question.id }
      expect(response).to have_http_status(:success)
    end
  end

end
