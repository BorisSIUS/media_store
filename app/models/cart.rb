class Cart < ApplicationRecord
    has_many :addings
    has_many :medias, through: :addings
end
