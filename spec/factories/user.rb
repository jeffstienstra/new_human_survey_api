FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "fake#{n}@test.com" }
    password { "password" }
    survey_complete { true }
  end

  trait :without_survey do
    survey_complete { false }
  end
end
