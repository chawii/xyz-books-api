require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:publisher) { create(:publisher) }
  let(:author) { create(:author) }
  subject { create(:book, publisher: publisher) }

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :isbn_13 }
  it { is_expected.to validate_presence_of :isbn_10 }
  it { is_expected.to validate_presence_of :publication_year }
  it { is_expected.to validate_presence_of :publisher_id }
end
