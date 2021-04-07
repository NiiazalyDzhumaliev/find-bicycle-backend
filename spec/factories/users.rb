FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email 'example@mail.com'
    password 'helloworld'
  end
end
