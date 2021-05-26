class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.text :route_name
      t.text :station_name
      t.text :minuites_on_foot
      t.timestamps
    end
  end
end
