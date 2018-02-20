FactoryBot.define do
  factory :income do
    income_money { Faker::Number.number(2) }
    income_date { Faker::Date.between(30.days.ago, Date.today) }
    category 'Basic expenses'
    description { Faker::Lorem.sentence }
    user
  end

  factory :invalid_income, parent: :income do
    income_money nil
  end
end
