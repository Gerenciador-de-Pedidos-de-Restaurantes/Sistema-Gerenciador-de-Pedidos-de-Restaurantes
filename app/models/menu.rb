class Menu < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {minimum: 5}
  validates :description, presence: true, uniqueness: true, length: {minimum: 5}
end
