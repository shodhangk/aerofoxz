class CreateSeatConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :seat_configurations do |t|
      t.integer :aeroplane_id
      t.integer :seat_group_id
      t.string :category
      t.integer :columns
      t.integer :rows
      t.integer :base_price
      t.timestamps
    end
  end
end
