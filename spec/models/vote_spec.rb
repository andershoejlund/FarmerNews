require 'rails_helper'
require 'factories/users'
require 'factories/questions'
require 'factories/votes'

RSpec.describe Vote, type: :model do
  let!(:user) { create(:user) }
  let!(:question) { create(:question, user_id: user.id) }
  let!(:vote) { build(:vote, user_id: user.id, question_id: question.id) }

  context "a user can only vote once per question/news" do
    it "should be invalid when same user votes on same question twice" do
      expect(vote).to be_valid
      vote.save!
      expect(build(:vote)).not_to be_valid
    end
  end
end
