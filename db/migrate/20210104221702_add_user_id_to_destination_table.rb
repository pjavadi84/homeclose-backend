class AddUserIdToDestinationTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :destinations, :user, null: false, index: true, foreign_key: true 
  end
end
