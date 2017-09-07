class Confession < ApplicationRecord
  validates :text, presence: true
  validates :category, presence: true

  belongs_to :category
end
