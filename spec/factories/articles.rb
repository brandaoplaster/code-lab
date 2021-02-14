FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    published { 0 }
  end
end
