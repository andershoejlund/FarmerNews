class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question, optional: true
  belongs_to :news, optional: true

  validates_presence_of :title, :description
end
