class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :requesting_user
      t.integer :quantity

      t.timestamps
    end
  end
end
