class Question < ApplicationRecord
  has_many :votes
  belongs_to :user

  validates_presence_of :title, :description
end
