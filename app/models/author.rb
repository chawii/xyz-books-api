class Author < ApplicationRecord
  has_many :books
  has_many :authored_books
  has_many :books, through: :authored_books

  validates_presence_of :first_name, :last_name

  def full_name
    [first_name, middle_name, last_name].compact.join(' ')
  end
end
