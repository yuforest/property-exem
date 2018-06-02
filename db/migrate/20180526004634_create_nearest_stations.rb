class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :line_name
      t.string :station_name
      t.integer :walk_minute

      t.timestamps
    end
  end
end
