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

  has_many :order_media_relations
  has_many :orders, through: :order_media_relations

  has_one_attached :picture
end
