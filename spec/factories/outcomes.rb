FactoryBot.define do
  factory :outcome do
    outcome_money { Faker::Number.number(2) }
    outcome_date { Faker::Date.between(22.days.ago, Date.today) }
    category 'Basic expenses'
    description { Faker::Lorem.sentence }
    user
  end

  factory :invalid_outcome, parent: :outcome do
    outcome_money nil
  end
end
