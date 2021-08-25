class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :quantity, type: Integer

  belongs_to :book_section

end