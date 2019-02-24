FactoryBot.define do
  factory :comment do
    email { "MyString" }
    commenter { "MyString" }
    body { "MyText" }
    article { nil }
  end
end
