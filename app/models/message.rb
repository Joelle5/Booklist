class Message < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
end
