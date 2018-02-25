class News < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :url
end
