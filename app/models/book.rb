class Book < ApplicationRecord
  validates :title, presence: { message: "Title cannot be blank."}, uniqueness: { message: "This book is already on the list."}
  validates :author, presence: { message: "Please fill in the author." }
  belongs_to :bookmark
end
