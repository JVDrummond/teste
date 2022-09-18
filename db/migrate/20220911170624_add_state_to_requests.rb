class AddStateToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :states, foreign_key: true
  end
end
