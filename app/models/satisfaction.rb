class Satisfaction < ActiveRecord::Base
  validates :date,:name,:category,:score, presence: true
  validates :score, numericality: { only_integer: true, less_than_or_equal_to: 10, greater_than: 0 }
end
