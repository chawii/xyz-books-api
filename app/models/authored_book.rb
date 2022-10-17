class AuthoredBook < ApplicationRecord
  belongs_to :author
  belongs_to :book

  validates_presence_of :author_id, :book_id
end
