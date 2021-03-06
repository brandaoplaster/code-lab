FactoryBot.define do
  factory :post do
    title { Faker::Book.publisher }
    body { Faker::Lorem.paragraph(sentence_count: 2) }
    published { true }
  end
end
