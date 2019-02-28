class Email < ApplicationRecord

	scope :by_date, -> { order(created_at: :asc)}
end
