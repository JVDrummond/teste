class AddProgressToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :progress, foreign_key: true
  end
end
