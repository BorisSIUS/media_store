class Media < ApplicationRecord
  validates :title,
    presence: true,
    uniqueness: true 
    

  validates :description,
    presence: true

  validates :price,
    presence: true

  has_many :join_carts_medias
  has_many :cart, through: :join_carts_medias
end
