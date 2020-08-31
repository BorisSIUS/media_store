class JoinCartsMedia < ApplicationRecord
    belongs_to :cart
    belongs_to :media
end
