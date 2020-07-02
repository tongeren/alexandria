class Book < ApplicationRecord
  belongs_to :title
  belongs_to :author_list
  belongs_to :book_identifier
  belongs_to :storage_info
  has_many :libraries
end
