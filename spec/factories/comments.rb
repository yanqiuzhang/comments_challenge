FactoryBot.define do
  factory :comment do
    email { "my@email.com" }
    comment { "This is awesome!" }
  end
end
