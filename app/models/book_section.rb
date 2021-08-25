class BookSection
  include Mongoid::Document
  field :title, type: String
  field :max_quantity, type: Integer
  field :books_quantity, type: Integer

  validates :title, presence: true, uniqueness: { case_sensitive: true }
  
  

  has_many :books, dependent: :destroy
end
