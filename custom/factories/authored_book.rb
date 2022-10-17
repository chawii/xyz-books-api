FactoryBot.define do
  factory :authored_book do
    book_id  { nil }
    author_id { nil }
    created_at  { Time.now }
    updated_at  { Time.now }
  end
end
