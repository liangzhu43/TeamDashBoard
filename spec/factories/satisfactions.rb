FactoryGirl.define do
  factory :satisfaction, class: Satisfaction do
    name 'John Doe'
    category 'Emotion'
    score 2
    date '2/2/2015'
  end

  factory :high_sat, class: Satisfaction do
    name 'Mary Joe'
    category 'Confidence'
    score 5
    date '2/2/2016'
  end
end
