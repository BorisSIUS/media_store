class Media < ApplicationRecord
  validates :title,
    presence: true,
    uniqueness: true 
    

  validates :description,
    presence: true

  validates :price,
    presence: true
end
