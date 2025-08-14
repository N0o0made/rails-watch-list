class Movie < ApplicationRecord
  has_many :Bookmarks
  has_many :list, through: :Bookmarks
  
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
