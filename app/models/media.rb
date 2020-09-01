class Media < ApplicationRecord
  validates :title,
    presence: true,
    uniqueness: true 
    

  validates :description,
    presence: true

  validates :price,
    presence: true

  has_many :addings
  has_many :carts, through: :addings
end
