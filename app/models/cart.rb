class Cart < ApplicationRecord
    has_many :join_carts_medias
    has_many :medias, through: :join_carts_medias
end
