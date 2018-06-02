class AddReferenceToNearestStation < ActiveRecord::Migration[5.0]
  def change
     add_reference :nearest_stations, :property, index: true
  end
end
