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

  validates :email, 
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
end
