class Post < ApplicationRecord
  validates :title, :body, :published, presence: true
end
