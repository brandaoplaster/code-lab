FactoryBot.define do
  factory :tag do
    title { Faker::Commerce.department(max: 3) }
  end
end
