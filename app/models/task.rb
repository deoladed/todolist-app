class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :category

   scope :by_date, -> { order(deadline: :asc)}
end
