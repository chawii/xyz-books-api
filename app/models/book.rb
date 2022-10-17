class Book < ApplicationRecord
  include Helpers::IsbnHelper

  belongs_to :publisher
  has_many   :authored_books
  has_many   :authors, through: :authored_books

  validates_presence_of :title, :isbn_13, :isbn_10, :publication_year, :publisher_id
  validates_uniqueness_of :isbn_13, :isbn_10
  before_validation :format_isbn
  validate :validate_isbn

  def author_names
    @author_names ||= authors.map { |author| author.full_name }.join(', ')
  end

  def publisher_name
    @publisher_name ||= publisher.name
  end

  private

  def validate_isbn
    errors.add(:isbn_13, 'invalid') unless Helpers::IsbnHelper.valid_isbn_13?(isbn_13)
    errors.add(:isbn_10, 'invalid') unless Helpers::IsbnHelper.valid_isbn_10?(isbn_10)
  end

  def format_isbn
    isbn_13.gsub!(/[^0-9A-Za-z]/, '') if isbn_13
    isbn_10.gsub!(/[^0-9A-Za-z]/, '') if isbn_10
  end
end
