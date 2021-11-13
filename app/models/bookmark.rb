class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list, message: "This movie was already added to the list." }
  validates :comment, length: { minimum: 6 }
end
