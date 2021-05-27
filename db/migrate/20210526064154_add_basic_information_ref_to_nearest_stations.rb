class AddBasicInformationRefToNearestStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :nearest_stations, :basic_information, foreign_key: true
  end
end
