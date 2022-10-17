require 'rails_helper'

RSpec.describe BooksController, :type => :request do
  let(:response_body) { JSON.parse(response.body) }

  describe 'GET /show' do
    let!(:publisher) { create(:publisher) }
    let!(:author) { create(:author) }

    context 'with valid isbn-13' do
      let(:isbn) { '978-1-891830-85-3' }
      let!(:book) { create(:book, publisher: publisher, isbn_13: isbn) }
      let!(:authored_book) { create(:authored_book, author: author, book: book) }

      it 'responds with a status code 200' do
        get "/books/#{isbn}"
        expect(response).to have_http_status(200)
      end

      it 'responds the book details' do
        get "/books/#{isbn}"

        expect(response_body['id']).to eq book.id
        expect(response_body['isbn_13']).to eq isbn.gsub(/[^0-9A-Za-z]/, '')
      end
    end

    context 'with valid isbn-10' do
      let(:isbn) { '1-891-83085-6' }
      let!(:book) { create(:book, publisher: publisher, isbn_13: '978-1-891830-85-3', isbn_10: isbn) }
      let!(:authored_book) { create(:authored_book, author: author, book: book) }

      it 'responds with a status code 200' do
        get "/books/#{isbn}"
        expect(response).to have_http_status(200)
      end

      it 'responds the book details' do
        get "/books/#{isbn}"

        expect(response_body['id']).to eq book.id
        expect(response_body['isbn_10']).to eq isbn.gsub(/[^0-9A-Za-z]/, '')
      end
    end

    context 'with invalid isbn' do
      let(:isbn) { '978-1-891830-85-3asdf' }

      it 'responds with a status code 400' do
        get "/books/#{isbn}"
        expect(response).to have_http_status(400)
      end

      it 'responds an error message' do
        get "/books/#{isbn}"
        expect(response_body['error']).to eq 'Invalid isbn'
      end
    end
  end

  describe 'POST /convert_isbn' do
    context 'when isbn is isbn13' do
      let(:isbn) { '978-1-891830-85-3' }

      it 'responds with a status code 200' do
        post '/books/convert_isbn', params: { isbn: isbn }
        expect(response).to have_http_status(200)
      end

      it 'converts the isbn-13 to isbn-10' do
        post '/books/convert_isbn', params: { isbn: isbn }
        expect(response_body['isbn']).to eq '1891830856'
      end
    end

    context 'when isbn is isbn10' do
      let(:isbn) { '1-891-83085-6' }

      it 'responds with a status code 200' do
        post '/books/convert_isbn', params: { isbn: isbn }
        expect(response).to have_http_status(200)
      end

      it 'converts the isbn-10 to isbn-13' do
        post '/books/convert_isbn', params: { isbn: isbn }
        expect(response_body['isbn']).to eq '9781891830853'
      end
    end

    context 'when isbn is invalid' do
      let(:isbn) { '1-891-83085-65234' }

      it 'responds with a status code 400' do
        post '/books/convert_isbn', params: { isbn: isbn }
        expect(response).to have_http_status(400)
      end

      it 'responds with an error message' do
        post '/books/convert_isbn', params: { isbn: isbn }
        expect(response_body['error']).to eq 'Invalid isbn'
      end
    end
  end
end
