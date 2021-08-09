FactoryBot.define do
  factory :goal do
    user_id { 1 }
    short_term_goal { "MyText" }
    long_term_goal { "MyText" }
  end
end
