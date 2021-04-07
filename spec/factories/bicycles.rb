FactoryBot.define do
  factory :bicycle do
    model { Faker::Name.name }
    description { Faker::Lorem.word }
    url { Faker::Internet.url }
  end
end
