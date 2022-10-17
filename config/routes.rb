Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/books/:id', to: 'books#show'
  post '/books/convert_isbn', to: 'books#convert_isbn'
end
