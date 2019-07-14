class CreateAeroplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :aeroplanes do |t|
      t.string :name
      t.string :airplane_type

      t.timestamps
    end
  end
end
