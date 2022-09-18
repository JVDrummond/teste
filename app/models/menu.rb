class Menu < ApplicationRecord
    #has_many :products, through:categories
    has_many :menu_products
end
