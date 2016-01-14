class Satisfaction < ActiveRecord::Base
  validates :date,:name,:category,:score, presence: true
end
