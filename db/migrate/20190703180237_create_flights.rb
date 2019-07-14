class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :destination_id
      t.integer :origin_id
      t.integer :aeroplane_id

      t.timestamps
    end
  end
end
