class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.integer :zipcode
      t.float :price
      t.boolean :available
      t.string :description
      t.integer :capacity

      t.timestamps
    end
  end
end
