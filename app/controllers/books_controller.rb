class BooksController < ApplicationController
  include Error::ErrorHandler
  include Helpers::IsbnHelper

  protect_from_forgery with: :null_session

  def show
    isbn = params[:id]
    isbn =
      if Helpers::IsbnHelper.valid_isbn_13?(isbn)
        isbn.gsub(/[^0-9A-Za-z]/, '')
      elsif Helpers::IsbnHelper.valid_isbn_10?(isbn)
        Helpers::IsbnHelper.isbn_10_to_13(isbn)
      else
        raise Error::InvalidISBN
      end

    book = Book.find_by!(isbn_13: isbn)
    render json: book.as_json(methods: [:publisher_name, :author_names])
  end

  def convert_isbn
    isbn = params[:isbn]
    isbn =
      if Helpers::IsbnHelper.valid_isbn_13?(isbn)
        Helpers::IsbnHelper.isbn_13_to_10(isbn)
      elsif Helpers::IsbnHelper.valid_isbn_10?(isbn)
        Helpers::IsbnHelper.isbn_10_to_13(isbn)
      else
        raise Error::InvalidISBN
      end

    render json: { isbn: isbn }
  end
end
