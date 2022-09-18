class Product < ApplicationRecord
    
    belongs_to :category 
    has_many :requests
    has_many :menu_products
end
