FactoryBot.define do
  factory :publisher do
    name  { Faker::Company.name }
    created_at  { Time.now }
    updated_at  { Time.now }
  end
end
