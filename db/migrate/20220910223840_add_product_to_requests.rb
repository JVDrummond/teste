class AddProductToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :product, foreign_key: true
  end
end
