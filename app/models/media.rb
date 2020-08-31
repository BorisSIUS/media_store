class Media < ApplicationRecord
  validates :title,
    presence: true,
    uniqueness: true,   
    length: { in: 3..10 }

  validates :description,
    presence: true,
    length: { in: 10..500 }

  validates :price,
    presence: true
end
