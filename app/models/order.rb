class Order < ApplicationRecord

	belongs_to :user

	has_many :order_media_relations
	has_many :medias, through: :order_media_relations

end
