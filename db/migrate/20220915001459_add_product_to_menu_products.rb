class AddProductToMenuProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :menu_products, :product, foreign_key: true
  end
end
