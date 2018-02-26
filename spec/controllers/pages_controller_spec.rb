require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "post #VOTE" do
    context "a user can only vote when logged in" do
      it "should vote when logged in" do
      end
      it "shouldn't vote when not logged in" do
      end
    end
  end

  describe "GET #guidelines" do
    it "returns http success" do
      get :guidelines
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #faq" do
    it "returns http success" do
      get :faq
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #support" do
    it "returns http success" do
      get :support
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end
end
