class Order < ApplicationRecord
  belongs_to :pessoa
  has_many :adresses
end
