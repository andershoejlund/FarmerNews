class Question < ApplicationRecord
  belongs_to :user
  has_many :votes

  validates_presence_of :title, :description
end
