class AddMenuToMenuProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :menu_products, :menu, foreign_key: true
  end
end
