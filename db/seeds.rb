# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def cleanup
  ActiveRecord::Base.transaction do
    AuthoredBook.delete_all
    Book.delete_all
    Author.delete_all
    Publisher.delete_all

    ActiveRecord::Base.connection.reset_pk_sequence!('authored_books')
    ActiveRecord::Base.connection.reset_pk_sequence!('books')
    ActiveRecord::Base.connection.reset_pk_sequence!('authors')
    ActiveRecord::Base.connection.reset_pk_sequence!('publishers')
  end

  puts 'Cleanup done.'

rescue => e
  puts "Exception: #{e.message}"
  puts JSON.pretty_generate e.backtrace
end

def create_authors
  @author_1 = Author.create!(first_name: 'Joel', middle_name: nil, last_name: 'Hartse').reload
  @author_2 = Author.create!(first_name: 'Hannah', middle_name: 'P.', last_name: 'Templer').reload
  @author_3 = Author.create!(first_name: 'Marguerite', middle_name: 'Z.', last_name: 'Duras').reload
  @author_4 = Author.create!(first_name: 'Kingsley', middle_name: nil, last_name: 'Amis').reload
  @author_5 = Author.create!(first_name: 'Fannie', middle_name: 'Peters', last_name: 'Flagg').reload
  @author_6 = Author.create!(first_name: 'Camille', middle_name: 'Byron', last_name: 'Paglia').reload
  @author_7 = Author.create!(first_name: 'Rainer', middle_name: 'Steel', last_name: 'Rilke').reload

  puts 'Authors Created.'
end

def create_publishers
  @publisher_1 = Publisher.create(name: 'Paste Magazine').reload
  @publisher_2 = Publisher.create(name: 'Publishers Weekly').reload
  @publisher_3 = Publisher.create(name: 'Graywolf Press').reload
  @publisher_4 = Publisher.create(name: "McSweeney's").reload

  puts 'Publishers Created.'
end

def create_books
  @book_1 = Book.create!(title: 'American Elf', isbn_13: '978-1-891830-85-3', isbn_10: '1-891-83085-6',
    publication_year: 2004, price: 1000, edition: 'Book 2', publisher: @publisher_1, image_url: 'doughnuts & Doom.png')
  @book_2 = Book.create!(title: 'Cosmoknights', isbn_13: '978-1-60309-454-2', isbn_10: '1-603-09454-7',
    publication_year: 2019, price: 2000, edition: 'Book 1', publisher: @publisher_2, image_url: 'The Bend of Luck.png')
  @book_3 = Book.create!(title: 'Essex County', isbn_13: '978-1-60309-038-4', isbn_10: '1-603-09038-X',
    publication_year: 1990, price: 500, edition: nil, publisher: @publisher_3, image_url: 'doughnuts & Doom.png')
  @book_4 = Book.create!(title: 'Hey, Mister (Vol 1)', isbn_13: '978-1-891830-02-0', isbn_10: '1-891-83002-3',
    publication_year: 2000, price: 1200, edition: 'After School Special', publisher: @publisher_3, image_url: 'doughnuts & Doom.png')
  @book_5 = Book.create!(title: 'The Underwater Welder', isbn_13: '978-1-60309-398-9', isbn_10: '1-603-09398-2',
    publication_year: 2022, price: 3000, edition: nil, publisher: @publisher_4, image_url: 'The Underwater Welder.png')

  puts 'Books Created.'
end

def create_book_associations
  # American Elf
  AuthoredBook.create!(author: @author_1, book: @book_1)
  AuthoredBook.create!(author: @author_2, book: @book_1)
  AuthoredBook.create!(author: @author_3, book: @book_1)

  # Cosmoknights
  AuthoredBook.create!(author: @author_4, book: @book_2)

  # Essex County
  AuthoredBook.create!(author: @author_4, book: @book_3)

  # Hey, Mister (Vol 1)
  AuthoredBook.create!(author: @author_2, book: @book_4)
  AuthoredBook.create!(author: @author_5, book: @book_4)
  AuthoredBook.create!(author: @author_6, book: @book_4)

  # The Underwater Welder
  AuthoredBook.create!(author: @author_7, book: @book_5)

  puts 'Book Associations Created.'
end

def seed
  ActiveRecord::Base.transaction do
    create_authors
    create_publishers
    create_books
    create_book_associations
  end
  puts 'Seeding done.'

rescue => e
  puts "Exception: #{e.message}"
  puts JSON.pretty_generate e.backtrace
end

cleanup
seed

