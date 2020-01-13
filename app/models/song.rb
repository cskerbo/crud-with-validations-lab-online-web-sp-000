class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :released_year, numericality: {less_than_or_equal_to: Time.new.year}
end
