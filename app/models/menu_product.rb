class MenuProduct < ApplicationRecord
    belongs_to :product
    belongs_to :menu
end
