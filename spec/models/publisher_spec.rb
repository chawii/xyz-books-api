require 'rails_helper'

RSpec.describe Publisher, type: :model do
  subject { create(:publisher) }

  it { is_expected.to validate_presence_of :name }
end
