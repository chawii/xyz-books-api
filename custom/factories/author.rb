FactoryBot.define do
  factory :author do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    middle_name { Faker::Name.middle_name }
    created_at  { Time.now }
    updated_at  { Time.now }
  end
end
