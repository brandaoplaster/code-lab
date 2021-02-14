class Article < ApplicationRecord
  validates :title, :published, presence: true
end
