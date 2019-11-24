class Adress < ApplicationRecord
  belongs_to :order
  validates :street, presence: {message: " can't be blank"},
                     length: {minimum: 5, too_short: 'should have at least 5 characters'}
  validates :block, presence: {message: " can't be blank"},
                    length: {minimum: 5, too_short: 'should have at least 5 characters'}
  validates :number, presence: {message: " can't be blank"}
end
