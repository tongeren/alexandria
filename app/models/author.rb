class Author < ApplicationRecord
  belongs_to :oeuvre
  has_many :books, through :author_lists
  has_many :author_lists
end
