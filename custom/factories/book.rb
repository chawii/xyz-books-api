FactoryBot.define do
  factory :book do
    title  { Faker::Book.title }
    isbn_13 { Faker::Code.isbn(base: 13) }
    isbn_10 { Faker::Code.isbn(base: 10) }
    sequence(:edition) {|n| "Edition #{n}" }
    publication_year { rand(1900..2022) }
    price { 100 }
    created_at  { Time.now }
    updated_at  { Time.now }
  end
end
