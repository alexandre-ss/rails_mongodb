json.extract! book_section, :id, :title, :max_quantity, :books_quantity, :created_at, :updated_at
json.url book_section_url(book_section, format: :json)
