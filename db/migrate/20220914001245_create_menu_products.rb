class CreateMenuProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_products do |t|

      t.timestamps
    end
  end
end
