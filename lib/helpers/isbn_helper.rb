module Helpers
  module IsbnHelper
    def self.isbn_valid?(isbn)
      valid_isbn_13?(isbn) || valid_isbn_10?(isbn)
    end

    def self.valid_isbn_13?(isbn)
      return false if isbn.blank?

      # Collect numeric characters only
      isbn = isbn.gsub(/[^0-9A-Za-z]/, '')
      return false if isbn.length != 13
      # Get and remove the check digit
      check_digit = isbn[isbn.length - 1]
      isbn = isbn[0..-2]

      sum = 0
      isbn.chars.each_with_index do |value, index|
        sum = sum + value.to_i * (index % 2 == 0 ?  1 : 3)
      end
      remainder = sum % 10
      remainder == 0 || (10 - remainder) == check_digit.to_i
    end

    def self.valid_isbn_10?(isbn)
      return false if isbn.blank?

      # Collect numeric characters only
      isbn = isbn.gsub(/[^0-9A-Za-z]/, '')
      return false if isbn.length != 10

      sum = 0
      isbn.chars.each_with_index do |value, index|
        add_value = value.to_i * (10 - index)
        add_value = 10 if index == 9 && value.to_s.downcase == 'x'
        sum = sum + add_value
      end

      sum % 11 == 0
    end

    def self.isbn_13_to_10(isbn)
      raise Error::InvalidISBN unless valid_isbn_13?(isbn)
      # Collect numeric characters only
      isbn = isbn.gsub(/[^0-9A-Za-z]/, '')
      # Remove the first 3 digits
      isbn = isbn[3..-1]
      # Get and remove the check digit
      check_digit = isbn[isbn.length - 1]
      isbn = isbn[0..-2]

      sum = 0
      isbn.chars.each_with_index do |value, index|
        sum = sum + value.to_i * (10 - index)
      end

      remainder = sum % 11
      check_digit = remainder == 0 ? 0 : 11 - remainder
      check_digit = 'X' if check_digit == 10
      [isbn, check_digit].join('')
    end

    def self.isbn_10_to_13(isbn)
      raise Error::InvalidISBN unless valid_isbn_10?(isbn)

      # Collect numeric characters only
      isbn = isbn.gsub(/[^0-9A-Za-z]/, '')
      isbn = '978' + isbn.chop

      sum = 0
      isbn.chars.each_with_index do |value, index|
        sum = sum + value.to_i * (index % 2 == 0 ?  1 : 3)
      end

      remainder = sum % 10
      check_digit = remainder == 0 ? 0 : 10 - remainder
      [isbn, check_digit].join('')
    end
  end
end
