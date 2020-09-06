class CreateFilmingLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :filming_locations do |t|
      t.string :name
    end
  end
end
