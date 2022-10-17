require 'rails_helper'

RSpec.describe AuthoredBook, type: :model do
  let(:publisher) { create(:publisher) }
  let(:author) { create(:author) }
  let(:book) {create(:book, publisher: publisher) }
  subject { create(:authored_book, author: author, book: book) }

  it { is_expected.to validate_presence_of :author_id }
  it { is_expected.to validate_presence_of :book_id }
end
