class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :quantity, type: Integer, default: 0
  field :abstract, type: String

  validates :title, presence: true, uniqueness: { case_sensitive: true }
  validates :author, presence: true


  belongs_to :book_section

end