class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :question, optional: true
  belongs_to :news, optional: true

  validates_uniqueness_of :user_id, scope: [:question_id, :news_id], errors: "You can't vote on the same thing twice!"
end
