json.extract! book, :id, :title, :author, :quantity, :book_section, :created_at, :updated_at
json.url book_url(book, format: :json)
