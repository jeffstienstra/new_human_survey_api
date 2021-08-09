FactoryBot.define do
  factory :user do
    email { "MyString" }
    password_digest { "MyString" }
    survey_complete? { false }
  end
end
