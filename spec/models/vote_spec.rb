require 'rails_helper'
require 'factories/users'
require 'factories/questions'

RSpec.describe Vote, type: :model do
  let!(:user) { create(:user) }
  let!(:question) { create(:question, user_id: user.id) }

  context "a user can only vote once per question/news" do
    it "should give an error when trying to vote on the same question twice" do
      expect(Vote.create!(user_id: user.id, question_id: question.id)).to be_valid
      expect(Vote.create!(user_id: user.id, question_id: question.id)).not_to be_valid
    end
  end
end
