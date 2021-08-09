FactoryBot.define do
  factory :favorite do
    user_id { 1 }
    category { "MyString" }
    description { "MyString" }
  end
end
