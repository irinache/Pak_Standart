class Article < ApplicationRecord
  validates :title,  presence: true, length: { maximum: 100 }
  validates :title,  presence: true, length: { minimum: 30 }
end
