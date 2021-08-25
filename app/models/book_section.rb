class BookSection
  include Mongoid::Document
  field :title, type: String
  field :max_quantity, type: Integer
  field :books_quantity, type: Integer

  has_many :books, dependent: :destroy
end
