class Review < ApplicationRecord
  validates_presence_of :content
  validates :rating, presence: true,
                     numericality: { only_integer: true },
                     inclusion: { in: 0..5 }
  belongs_to :restaurant
end
