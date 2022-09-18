class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.boolean :ativo
      t.float :preco

      t.timestamps
    end
  end
end
