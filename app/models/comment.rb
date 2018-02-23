class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question, optional: true
  belongs_to :new, optional: true

  validates_presence_of :title, :description
end
