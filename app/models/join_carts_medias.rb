class JoinCartsMedias < ApplicationRecord
    belongs_to :cart
    belongs_to :media
end
