class AddNameToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :name, :string
  end
end
