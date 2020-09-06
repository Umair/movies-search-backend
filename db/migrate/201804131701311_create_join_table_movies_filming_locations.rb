class CreateJoinTableMoviesFilmingLocations < ActiveRecord::Migration[5.2]
  def change

    create_join_table :movies, :filming_locations do |t|
      t.integer :movie_id
      t.integer :filming_location_id
    end

  end
end
