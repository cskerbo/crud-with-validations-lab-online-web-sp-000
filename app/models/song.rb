class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :release_year, numericality: {less_than_or_equal_to: Time.new.year}
end
