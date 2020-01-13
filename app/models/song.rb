class Song < ApplicationRecord
  current_year = Time.new.year
  validates :title, presence: true, uniqueness: true
end
