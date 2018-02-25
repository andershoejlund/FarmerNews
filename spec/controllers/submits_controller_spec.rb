require 'rails_helper'
require 'factories/news'

RSpec.describe SubmitsController, type: :controller do
  let!(:submit_params) { attributes_for(:news, title: "") }
  let!(:submit_params_empty) { attributes_for(:news, title: "") }
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: {content: submit_params}
      expect(response).to have_http_status(:success)
    end
  end

end
