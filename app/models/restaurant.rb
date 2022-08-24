class Restaurant < ApplicationRecord
  validates_presence_of :name, :address
  validates_inclusion_of :category, in: %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
end
